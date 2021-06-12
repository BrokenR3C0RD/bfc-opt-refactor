/*
    opt-bfc JS transpiler backend
    (c) 2018 MasterR3C0RD
*/

var tokens = require("../tokenizer").tokens;

var ofs = function(num){
    if(num == 0)
        return "";
    else if(num > 0)
        return "+" + num.toString();
    else
        return num.toString();
}

var addsub = function(num){
    if(num === 1)
        return "++";
    else if(num === -1)
        return "--";
    else if(num < 0)
        return "-=" + Math.abs(num).toString();
    else
        return "+=" + num.toString();
}

var mul = function(muls, o){
    var out = "";
    for(var tofs in muls){
        var mul = muls[tofs];
        if(mul == 0)
            continue;
        
        var neg = mul < 0;
        mul = Math.abs(mul);
        out += `t[p${ofs(o + (+tofs))}]${neg ? "-" : "+"}=t[p${ofs(o)}]${mul != 1 ? "*" + mul.toString() : ""};`;
    }

    out += `t[p${ofs(o)}]=0;`;
    return out;
};

var transpile = function(tok){
    var output =
`
// opt-bfc output
var readline = require("readline");
var stdin = process.stdin;
var stdout = process.stdout;
var rl = readline.createInterface({
    input: stdin,
    output: stdout
});

let inputqueue = [];
function getchar(){
    return new Promise((resolve, reject) => {
        var char = inputqueue.shift();
        if(char == null){
            rl.question("", line => {
                inputqueue = line.split("");
                resolve(13);
            });
        } else {
            resolve(char.charCodeAt());
        }
    });
}
function putchar(char){
    stdout.write(String.fromCharCode(char));
}
var t = new Uint8Array(65536);
var p = 0;

async function main(){
`.trim();

    for(var i = 0; i < tok.length; i++){
        var token = tok[i];
        var o = token[1];
        switch(token[0]){
            case tokens.ADD:
                output += `t[p${ofs(o)}]${addsub(token[2])};`;
                break;
            case tokens.SUB:
                output += `t[p${ofs(o)}]${addsub(-token[2])};`;
                break;
            case tokens.LFT:
                output += `p${addsub(-token[2])};`;
                break;
            case tokens.RGT:
                output += `p${addsub(token[2])};`;
                break;
            case tokens.INP:
                output += `t[p${ofs(o)}]=await getchar();`;
                break;
            case tokens.OUT:
                output += `putchar(t[p${ofs(o)}]);`;
                break;
            case tokens.WST:
                output += "while(t[p]){";
                break;
            case tokens.WED:
                output += "};";
                break;
            case tokens.CLR:
                output += `t[p${ofs(o)}]=0;`;
                break;
            case tokens.SET:
                output += `t[p${ofs(o)}]=${token[2]};`;
                break;
            case tokens.MUL:
                output += mul(token[2], token[1]);
                break;
            default:
                throw new Error("Unknown token:", token[0]);
                
        }
    }
    output += `
return;}
main().then(() => process.exit()).catch(e => console.error(e.stack));
`.trim();
    return output;
}

module.exports = {
    defaultExtension: "js",
    transpile: transpile
};