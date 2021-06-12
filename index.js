/*
    opt-bfc command-line script
    (c) 2018 MasterR3C0RD
*/

var fs = require("fs");
var yargs = require("yargs");
var Parser = require("./tokenizer");

var args = yargs
                .option("skipopt")
                .describe("skipopt", "skip specific optimizations, or all")
                .option("lang")
                .describe("lang", "chooses the language to use for output")
                .alias("o", "skipopt")
                .alias("l", "lang")
                .default("lang", "c")
                .demandCommand(1)
                .usage("Usage: $0 <input.bf> [--skipopt=all|opt1,opt2,..] [--langout=c] [output]")
                .argv;

var input = args._[0];
var output = args._[1];
var lang = args.lang;
console.log(args.skipopt);
var skipOpts = (args.skipopt || "").split(",");
var backend = null;

try {
    backend = require("./backends/" + lang);
} catch(e){
    console.log(e);
    backend = require("opt-bfc-backend-" + lang);
}

if(output == null)
    output = input + "." + backend.defaultExtension;

var file = fs.readFileSync(input, "utf8");
var tokens = Parser.tokenize(file);

if(skipOpts.indexOf("all") === -1)
    tokens = Parser.optimizer.optimize(tokens, skipOpts);

var out = backend.transpile(tokens);
fs.writeFileSync(output, out);
console.log("Compilation successful!");
