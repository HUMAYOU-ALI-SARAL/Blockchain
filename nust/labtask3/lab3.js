const { createHash } = require('crypto');
const hashes=['my','name','is','humayou','ali','saral','and','nothing']
const hashedSha=[]
const secondHash=[]
const thirdhash=[]
const fourthHash=[]
hashes.map((hashItem)=>{
    const hashedIte=createHash('sha256').update(hashItem).digest('hex');
    hashedSha.push(hashedIte)
})
const Merkling=(previousHash,currentHash)=>{
    let x=0
while(x<previousHash.length){
    currentHash.push(createHash('sha256').update(previousHash[x]).digest('hex')+createHash('sha256').update(previousHash[x+1]).digest('hex'))
x+=2
}
console.log(currentHash)


}
Merkling(hashedSha,secondHash)
Merkling(secondHash,thirdhash)
Merkling(thirdhash,fourthHash)


// Question number three starts from here

const fs = require('fs');

const filePath = 'one.pdf'; // Path to the file
const blockCount = 8; // Number of blocks

fs.readFile(filePath, (err, fileContent) => {
  if (err) {
    console.error('Error reading the file:', err);
    return;
  }

  const fileSize = fileContent.length;
  const blockSize = Math.floor(fileSize / blockCount);

  const dataBlocks = [];

  for (let i = 0; i < fileSize; i += blockSize) {
    const block = fileContent.slice(i, i + blockSize);
    dataBlocks.push(createHash('sha256').update(block).digest('hex'));
  }
//   Merkling(dataBlocks,firstHash)
//   Merkling(firstHash,secondHash)
//   Merkling(thirdhash,fourthHash)
// console.log(dataBlocks)
});

