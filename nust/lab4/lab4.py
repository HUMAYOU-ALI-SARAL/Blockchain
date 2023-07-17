from cryptography.hazmat.primitives.asymmetric import rsa,dsa,ec
from cryptography.hazmat.primitives import serialization,hashes
from cryptography.hazmat.primitives.asymmetric.padding import PKCS1v15
from cryptography.hazmat.primitives import padding

 
 

# # Generating Public and Private Key Pairs--------------------
def generateRsaKeyPairs():
    privateKey=rsa.generate_private_key(public_exponent=65537,key_size=2048)
    publicKey=privateKey.public_key()
    print(f'RSA KEY PAIRS: \n PublicKey: {publicKey} \n PrivateKey:{privateKey}')
    return privateKey,publicKey


# RSA ENCRYPTION------------------
def RSAEncryption(publickey,plainText):
     encryptedMessage=publickey.encrypt(plainText,padding=PKCS1v15())
     print(f'Ecrypted By Rsa:\n {encryptedMessage}')
     return(encryptedMessage)

# RSA Decryption-----------------
def RSADecryption(privatekey,cipherText):
    decryptedMessage= privatekey.decrypt(cipherText,padding=PKCS1v15())
    print(f'Decrypted By Rsa:\n {decryptedMessage}')
    return(decryptedMessage)




# DSA Key Pairs----------------
def genrateDSAKeyPairs():
    dsaPrivateKey=dsa.generate_private_key(key_size=1024)
    dsaPublicKey=dsaPrivateKey.public_key()
    print(f'DSA Private Key: {dsaPrivateKey}')
    print(f'DSA Public Key: {dsaPublicKey}')
    return dsaPrivateKey, dsaPublicKey


# Genrating signature from DSA-------------------
def DSASign(dsaPrivateKey,text):
    dsaSign=dsaPrivateKey.sign(text,hashes.SHA256())
    print(f'Signed By DSA:{dsaSign}')
    return (dsaSign)

# Verifying Signature---------------------
def DSAVerify(publicKey,message,signature):
   try:
    Verify=publicKey.verify(signature,message,hashes.SHA256())
    print("Singature Verified")
    return Verify
   except TypeError:
      print(f'Signature Verification Failed due to {TypeError}')


#Generating ecDSA  Key Pairs--------------
def generateEcDsaKeyPairs():
 privateKeyEcDsa=ec.generate_private_key(ec.SECP256K1())
 publicKeyEcDsa=privateKeyEcDsa.public_key()
 print(f"ECDSA Key Pairs \n Private Key:{privateKeyEcDsa} \n Public Key:{publicKeyEcDsa}")
 return privateKeyEcDsa, publicKeyEcDsa
 
# Signing with ECDSA-------------
def ECDSASign(privateKey,message):
   signatureEcDsa=privateKey.sign(message,ec.ECDSA(hashes.SHA256()))
   print(f'signed With ECDSA:{signatureEcDsa}')
   return signatureEcDsa

def ECDSAVerify(publicKey,message,signature): 
 try:
    verifySignature=publicKey.verify(signature,message,ec.ECDSA(hashes.SHA256()))
    print(f'Signature Verified By ECDSA')
    return verifySignature
 except TypeError:
    print(f"verification Failed With ECDSA due to {TypeError}")


def main():
 message="humayou"
 genPrivateKey,genPublicKey=generateRsaKeyPairs()
 cipherText=RSAEncryption(genPublicKey,message.encode())
 RSADecryption(genPrivateKey,cipherText)
#  Code FrO DSA------------------------
 DSAprivateKey,DSApublicKey=genrateDSAKeyPairs()
 signature=DSASign(DSAprivateKey,message.encode())
 DSAVerify(DSApublicKey,message.encode(),signature)
#  Edsa's code starts from here--------------
 privateKeyEcDsa,publicKeyEcDsa=generateEcDsaKeyPairs()
 signatureEcDsa=ECDSASign(privateKeyEcDsa,message.encode())
 ECDSAVerify(publicKeyEcDsa,message.encode(),signatureEcDsa)

main()


 