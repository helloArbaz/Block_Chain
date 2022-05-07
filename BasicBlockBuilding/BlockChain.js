var Block = require("./Block");
const { v4: uuidv4 } = require('uuid');

class BlockChain {
    constructor() {
        this.chain = [this.genisBlock()];
    }

    genisBlock() {
        return new Block(uuidv4(), ["Genisis Block"], "")
    }

    lastHash() {
        return this.chain[this.chain.length - 1]
    }

    newBlock(newBlockData) {
        newBlockData.prevHash = this.lastHash().hash;
        newBlockData.mineBlock(4)
        this.chain.push(newBlockData)
    }

    isValidChain() {
        for (let index = 1; index < this.chain.length; index++) {
            const currentBlock = this.chain[index];
            if (currentBlock) {
                if (currentBlock.hash !== currentBlock.computeHash()) {
                    return false
                }
            }
        }
        return true
    }
}

let BB = new BlockChain();


let a = new Block(uuidv4(), ["Second Block"])

let c = new Block(uuidv4(), ["Third Block"])

let d = new Block(uuidv4(), ["Fourth Block"])

console.log("Minning 1")
BB.newBlock(a)
console.log("Minning 2")
BB.newBlock(c)
console.log("Minning 3")
BB.newBlock(d)

console.log(JSON.stringify(BB))

console.log(BB.isValidChain())