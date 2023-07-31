import hashlib
import bcrypt
name="humayou"
encodedName=name.encode()
print(encodedName)
salt=bcrypt.gensalt()
nameHash=bcrypt.hashpw(encodedName,salt)
print(nameHash)
nameHashMd5=hashlib.md5(encodedName)
print(nameHashMd5)
nameSha1=hashlib.sha1(encodedName).hexdigest()
print(nameSha1)

nameSha256=hashlib.sha256(encodedName).hexdigest()
print(nameSha256)

nameSha512=hashlib.sha512(encodedName).hexdigest()
print(nameSha512)

nameBlake2=hashlib.sha1(encodedName).hexdigest()
print(nameBlake2)

 