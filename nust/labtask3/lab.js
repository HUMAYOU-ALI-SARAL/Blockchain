const { createHash } = require("crypto")

const givenString=['my','name','is','humayou','ali','and','nothing','else','my','name','is','humayou','ali','and','nothing','else']
let hashed=[]
let merklingTree=[]
givenString.map((item)=>{
    hashedItem=createHash('sha256').update(item).digest('hex')
    hashed.push(hashedItem)
})
// console.log(hashed)

function funk(main,empty){
const num=main.length
if(main.length>1){
    for(let i=0;i<num;i+=2){
        empty.push(createHash('sha256').update(main[i]).digest('hex')+createHash('sha256').update(main[i+1]).digest('hex'))        
        }
        main.length=0
    main=[...empty]
    empty.length=0
    console.log(main)
    main.length===1?main:funk(main,empty)
}
else{
    return main
}
}
funk(hashed,merklingTree)

