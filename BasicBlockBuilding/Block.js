const { v4: uuidv4 } = require('uuid');
const SHA256 = require("crypto-js/sha256")
class Block {

    // default dataset
    constructor(uuid, data, prevHash) {
        this._id = uuid;
        this.data = data;
        this.timeStamp = Date.now();
        this.prevHash = prevHash;
        this.hash = this.computeHash()
        this.diffUnique = 0;
    }

    // create hash 
    computeHash() {
        let computeHashString = this._id + this.timeStamp + this.timeStamp + this.prevHash + this.diffUnique + JSON.stringify(this.data);
        return SHA256(computeHashString).toString()
    }

    mineBlock(diff) {
        while (this.hash.substring(0, diff) !== new Array(diff + 1).join("0")) {
            this.diffUnique++
            this.hash = this.computeHash()
        }
    }
}

module.exports = Block