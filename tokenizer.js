/*
    opt-bfc tokenizer
    (c) 2018 MasterR3C0RD
*/

// Tokens used in the output stream
var tokens = {
    // These tokens translate directly to BF opcodes
    ADD: 1,  // +
    SUB: 2,  // -
    LFT: 3,  // <
    RGT: 4,  // >
    INP: 5,  // ,
    OUT: 6,  // .
    WST: 7,  // [
    WED: 8,  // ]
 
    // These tokens are for optimized patterns of BF opcodes
    CLR: 9,  // Clear loop: [-]
    SET: 10, // Setting to a constant: [-]+
    MUL: 11, // Simple loops (usually multiply): +++++[>+>--<<-]
    CLX: 12  // Complex loops (usually if): +[[-]>+>++>-]
}

// Converts a character to a token to make the first step of the tokenizer look prettier
var char2tok = function(ch){
    switch(ch){
        case "+":
            return tokens.ADD;
        case "-":
            return tokens.SUB;
        case "<":
            return tokens.LFT;
        case ">":
            return tokens.RGT;
        case ",":
            return tokens.INP;
        case ".":
            return tokens.OUT;
        case "[":
            return tokens.WST;
        case "]":
            return tokens.WED;
        default:
            throw new Error(`Unknown character: ${ch}`);
    }    
}

// Creates a simple pattern matching function from an inputted pattern
/* Patterns look like: [<> = required]
    [ [<list of tokens that are valid>], arg... ]

    Where arg is one of:
    null (ignore)
    <a number> (constant)
    [<minimum>, <maximum>] (variable value between one of these values)
*/

var simplePatternTest = function(...toks){
    return function(stream, idx){
        for(var i = 0; i < stream.length - idx; i++){
            var tok = stream[idx + i];
            var inf = toks[i];
            if(inf[0] instanceof Array && inf[0].indexOf(tok[0]) === -1 || tok[0] == inf[0]){
                return false;
            }
            for(var j = 0; j < inf.length; j++){
                if(typeof inf[j] == "number" && tok[j] !== inf[j])
                    return false;
                else if(inf instanceof Array && (tok[j] < inf[j][0] || tok[j] > inf[j][1]))
                    return false;
            }
        }
        return true;
    }
}

// These are built-in patterns that are used for optimization
var patterns = [
    {
        name: "clr",
        tests: [
            simplePatternTest(
                [tokens.WST],
                [ [tokens.ADD, tokens.SUB] ],
                [tokens.WED]
            )
        ],
        insert: function(stream, idx){
            stream.splice(idx, 3, [tokens.CLR, 0]);
        }
    },
    {
        name: "set",
        tests: [
            simplePatternTest(
                [tokens.CLR, 0],
                [tokens.ADD, 0]
            )
        ],
        insert: function(stream, idx){
            var val = stream[idx + 1][2];
            stream.splice(idx, 2, [tokens.SET, 0, val]);
        }
    },
    {
        name: "ofs",
        tests: [
            simplePatternTest(
                [ [tokens.RGT, tokens.LFT] ],
                [ [tokens.ADD, tokens.SUB, tokens.INP, tokens.OUT, tokens.CLR, tokens.SET, tokens.MUL] ],
                [ [tokens.RGT, tokens.LFT] ]
            ),
            function(stream, idx){
                if(stream[idx][0] === stream[idx + 2][0] || stream[idx][2] !== stream[idx + 2][2])
                    return false;
                return true;
            }
        ],
        insert: function(stream, idx){
            var tok = stream[idx + 1];
            var ofs = stream[idx][2] * (stream[idx][0] === tokens.LFT ? -1 : 1);
            tok[1] = ofs;
            stream.splice(idx, 3, tok);
        }
    },
    {
        name: "mul",
        tests: [
            function(stream, idx){
                if(stream[idx][0] != tokens.WST)
                    return false;
                
                var virtTape = {};
                var virtPtr = 0;
                var amt = 1;

                loop:
                for(var i = idx + 1; i < stream.length; i++){
                    amt++;
                    if(stream[i][0] === tokens.WED)
                        break;
                    
                    switch(stream[i][0]){
                        case tokens.ADD:
                            virtTape[virtPtr] = (virtTape[virtPtr] || 0) + stream[i][2];
                            break;
                        case tokens.SUB:
                            virtTape[virtPtr] = (virtTape[virtPtr] || 0) - stream[i][2];
                            break;
                        case tokens.LFT:
                            virtPtr -= stream[i][2];
                            break;
                        case tokens.RGT:
                            virtPtr += stream[i][2];
                            break;
                        default:
                            return false;
                    }
                    
                }
                
                if(virtTape[0] != -1 || virtPtr !== 0)
                    return false;
                
                delete virtTape[0];
                var info = {
                    mul: virtTape,
                    amt: amt
                };

                return info;
            }
        ],
        insert: function(stream, idx, info){
            stream.splice(idx, info[0].amt, [tokens.MUL, 0, info[0].mul]);
        }
    }
];

var stackableTokens = [tokens.ADD, tokens.SUB, tokens.LFT, tokens.RGT];

// Tokenizes the input, preparing it for optimization
var tokenize = function(inp){
    // First, get rid of tokens we don't need
    var code = inp.replace(/[^-+,.<>\[\]]/g, "");
    
    var toks = [],
        lastTk = null,
        tcount = 0;
    
    for(var i = 0; i < code.length; i++){
        var tok = char2tok(code[i]);
        if(tok === lastTk){
            tcount ++;
            continue;
        } 

        if(lastTk !== null){
                toks.push([lastTk, 0, tcount]);
        }
        
        if(stackableTokens.indexOf(tok) !== -1){
            lastTk = tok;
            tcount = 1;
        } else {
            lastTk = null;
            if(tok == tokens.INP || tok == tokens.OUT){
                toks.push([tok, 0]);
            } else {
                toks.push([tok]);
            }
        }
    }

    return toks;
}

// Optimizes the code, optionally disabling some optimizations
var optimize = function(tokens, excludeOptimizations = []){
    var repeat = false;
    var optimizations = [];
    for(var i = 0; i < patterns.length; i++){
        if(excludeOptimizations.indexOf(patterns[i].name) == -1)
            optimizations.push(patterns[i]);
    }
    for(var i = 0; i < tokens.length; i++){
        optloop:
        for(var j = 0; j < optimizations.length; j++){
            var optimization = optimizations[j];
            var extra = [];
            for(var k = 0; k < optimization.tests.length; k++){
                var res = optimization.tests[k](tokens, i);
                if(res == false)
                    continue optloop;
                else if(res !== true)
                    extra.push(res);
            }
            optimization.insert(tokens, i, extra);
            repeat = true;
            break;
        }
    }
    if(repeat)
        return optimize(tokens, excludeOptimizations);
    else
        return tokens;
}

module.exports = {
    tokens: tokens,
    optimizer: {
        simplePatternTest: simplePatternTest,
        patterns: patterns,
        optimize: optimize
    },
    tokenize: tokenize
};