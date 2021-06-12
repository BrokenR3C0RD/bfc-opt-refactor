/*
    opt-bfc Lua transpiler backend
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
    if(num < 0)
        return "-" + Math.abs(num).toString();
    else
        return "+" + num.toString();
}

var mul = function(muls, o){
    var out = "";
    for(var tofs in muls){
        var mul = muls[tofs];
        if(mul == 0)
            continue;
        
        var neg = mul < 0;
        mul = Math.abs(mul);
        out += `t[p${ofs(o + (+tofs))}]=t[p${ofs(o + (+tofs))}]${neg ? "-" : "+"}t[p${ofs(o)}]${mul != 1 ? "*" + mul.toString() : ""};`;
    }

    out += `t[p${ofs(o)}]=0;`;
    return out;
};

var transpile = function(tok){
    var output =
`
-- opt-bfc output
local t = {}
for i=1,65536,1 do
    t[i] = 0
end

local p = 1;

`.trim();

    for(var i = 0; i < tok.length; i++){
        var token = tok[i];
        var o = token[1];
        switch(token[0]){
            case tokens.ADD:
                output += `t[p${ofs(o)}]=t[p${ofs(o)}]${addsub(token[2])};`;
                break;
            case tokens.SUB:
                output += `t[p${ofs(o)}]=t[p${ofs(o)}]${addsub(-token[2])};`;
                break;
            case tokens.LFT:
                output += `p=p${addsub(-token[2])};`;
                break;
            case tokens.RGT:
                output += `p=p${addsub(token[2])};`;
                break;
            case tokens.INP:
                output += `t[p${ofs(o)}]=string.byte(io.read(1));`;
                break;
            case tokens.OUT:
                output += `io.write(string.char(t[p${ofs(o)}]));`;
                break;
            case tokens.WST:
                output += "while(t[p]~=0) do ";
                break;
            case tokens.WED:
                output += "end;";
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
    return output;
}

module.exports = {
    defaultExtension: "lua",
    transpile: transpile
};