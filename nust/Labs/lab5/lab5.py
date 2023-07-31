from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.primitives.asymmetric import ec
import hashlib
import random
 
def Txid():
    randomNumber=str(random.randint(1,1000000)).encode()
    hashRandomNumber=hashlib.sha256(randomNumber).hexdigest()
    print(hashRandomNumber)
    return hashRandomNumber

def generateInput():
    prevTxid=Txid()
    previousOutput=random.randint(0,5)
    return prevTxid,previousOutput

def generateOutput():
 recipientAdress='recipient_adress_'+str(random.randint(1,100))
 randomNumber=random.uniform(0.001,1.0)
 amount= round(randomNumber,8)   
 return recipientAdress,amount


def generateTransactionFee():
   randomNumber=random.uniform(0.0001,0.001)
   return round(randomNumber,8)


def generateRandomTransaction():
   txid=Txid()
   inputPrevTxid,inputPrevOutputIndex=generateInput()
   outputReceiptAdress,outputAmount=generateOutput()
   transactionFee=generateTransactionFee()
   return txid,inputPrevTxid,inputPrevOutputIndex,outputReceiptAdress,outputAmount,transactionFee


def ConcatenateStrings(txid,inputPrevTxid,inputPrevOutputIndex,outputReceiptAdress,outputAmount,transactionFee):
 transactionData=txid+inputPrevTxid+str(inputPrevOutputIndex)+outputReceiptAdress+str(outputAmount)+str(transactionFee)
 return(transactionData)


def generateEcdsaKeyPairs():
 ECDSAPrivatekey=ec.generate_private_key(ec.SECP256K1())
 ECDSAPublicKey=ECDSAPrivatekey.public_key()
 return ECDSAPrivatekey,ECDSAPublicKey


def ECDSASign(privateKey,message):
   signature=privateKey.sign(message,ec.ECDSA(hashes.SHA256()))
   return signature



def ECDSAVerify(publicKey,signature,message):
   try:
      verify=publicKey.verify(signature,message,ec.ECDSA(hashes.SHA256()))
      print("Verification:verified")
      return verify
   except TypeError:
      print("Verification Failed")
def main():
   txid,inputPrevTxid,inputPrevOutputIndex,outputReceiptAdress,outputAmount,transactionFee=generateRandomTransaction()
   transactionDataAsMessage=ConcatenateStrings(txid,inputPrevTxid,inputPrevOutputIndex,outputReceiptAdress,outputAmount,transactionFee)
   transactionDataAsMessageSha_256=hashlib.sha256(transactionDataAsMessage.encode()).hexdigest()
   ECDSAPrivateKey,ECDSAPublicKey=generateEcdsaKeyPairs()
   signature=ECDSASign(ECDSAPrivateKey,transactionDataAsMessageSha_256.encode())
   print(f'ECDSA PUblicKey:{ECDSAPublicKey}')
   print(f'ECDSA Private Key:{ECDSAPrivateKey}')
   print(f'transaction Data As Message Sha256:{transactionDataAsMessageSha_256}')
   print(f'Signature: {signature}')
   ECDSAVerify(ECDSAPublicKey,signature,transactionDataAsMessageSha_256.encode())
main()

     