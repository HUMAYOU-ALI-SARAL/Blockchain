import hashlib
onlineHash='c27783392976304d9ec296c6cf318f4145e780d02b78c679347e93408553a59c'
openedFile = open("Lab5-6-2023.pdf","rb")
readFile = openedFile.read()
hashedFile=hashlib.sha256(readFile).hexdigest()
if onlineHash==hashedFile:{
print('verified')
}
else:
    print("not verified")



# question no 02

textFile=open("hash.txt","rb")
hashTxtFile=hashlib.sha256(textFile.read()).hexdigest()
print(hashTxtFile)


# question no 03

message1=open('message1.bin','rb')
message2=open('message2.bin','rb')
messageSha=hashlib.sha256(message2.read()).hexdigest()
messageMd5=hashlib.md5(message2.read()).hexdigest()
print(messageSha)
print(messageMd5)

messageSha1=hashlib.sha256(message1.read()).hexdigest()
messageMd51=hashlib.md5(message1.read()).hexdigest()
print(messageSha1)
print(messageMd51)
