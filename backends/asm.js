/*
    opt-bfc x86 assembly (DOS) transpiler backend
    (c) 2018 MasterR3C0RD
*/

var tokens = require("../tokenizer").tokens;

var ofs = function(num, reg){
    var r = reg || "bx";
    if(num == 0)
        return "";
    else if(num > 0)
        return `add ${reg}, ` + num.toString() + "\n";
    else
        return `sub ${reg}, ` + Math.abs(num).toString() + "\n";
}

var mul = function(muls, o){
    var out = "mov cx, word [p]\n";
    out += ofs(o, "cx");
    for(var tofs in muls){
        var mul = muls[tofs];
        if(mul == 0)
            continue;
        
        var neg = mul < 0;
        mul = Math.abs(mul);
        out += "mov bx, cx\n";
        out += "mov al, byte [t + bx]\n";
        if(mul){
            out += "mov ah, " + mul + "\n"
            out += "mul ah\n";
        }
        out += "mov bx, word [p]\n";
        out += ofs(tofs, "bx");
        out += "mov dl, byte [t + bx]\n";
        out += (neg ? "add" : "sub") + " dl, al\n";
        out += "mov [t + bx], byte dl\n";
    }

    out += "mov bx, cx\n";
    out += "mov word [t + bx], 0\n"
    return out;
};

var transpile = function(tok){
    var output =
`
; opt-bfc output
org 100h

section .text 
start:
mov cx, 30000
xor ax, ax
mov di, t
cld
rep stosb
mov [p], word 0
mov bx, t

`.trim() + "\n";

    var sloopnum = 1;
    var eloopnum = 0;

    for(var i = 0; i < tok.length; i++){
        var token = tok[i];
        var o = token[1];
        switch(token[0]){
            case tokens.ADD:
                output += "mov bx, word [p]\n";
                output += ofs(o);
                output += "add [t + bx], byte " + token[2] + "\n";
                break;
            case tokens.SUB:
                output += "mov bx, word [p]\n";
                output += ofs(o);
                output += "sub [t + bx], byte " + token[2] + "\n";
                break;
            case tokens.LFT:
                output += "sub word [p], " + token[2] + "\n";
                break;
            case tokens.RGT:
                output += "add word [p], " + token[2] + "\n";
                break;
            case tokens.INP:
                output += "mov bx, word [p]\n";
                output += ofs(o);
                output += "call getchar\n";
                output += "mov [t + bx], dl\n";
                break;
            case tokens.OUT:
                output += "mov al, 02h\n";
                output += "mov bx, word [p]\n";
                output += ofs(o);
                output += "mov dl, [t + bx]\n";
                output += "int 21h\n";
                break;
            case tokens.WST:
                output += "mov bx, word [p]\n";
                output += "mov ax, word [t + bx]\n";
                output += "jz el" + sloopnum + "\n";
                output += "sl" + sloopnum + "\n";
                eloopnum = sloopnum++;
                break;
            case tokens.WED:
                output += "mov bx, word [p]\n";
                output += "mov ax, word [t + bx]\n";
                output += "jnz sl" + eloopnum + "\n";
                output += "el" + eloopnum + "\n";
                eloopnum--;
                break;
            case tokens.CLR:
                output += "mov bx, word [p]\n";
                output += ofs(o);
                output += "mov [t + bx], 0\n";
                break;
            case tokens.SET:
                output += "mov bx, word [p]\n";
                output += ofs(o);
                output += "mov [t + bx], " + token[2] + "\n";
                break;
            case tokens.MUL:
                output += mul(token[2], token[1]);
                break;
            default:
                throw new Error("Unknown token:", token[0]);
                
        }
        output += "\n";
    }
    output += `
mov ah, 4Ch
mov al, 0
int 21h

getchar:
    xor ax, ax
    mov ah, 01h
    int 21h
    mov dl, ah
    ret

section .data 
    test_str db "Hello world!$"

section .bss 
    t resb 30000
    p resw 1
`.trim();
    return output;
}

module.exports = {
    defaultExtension: "asm",
    transpile: transpile
};