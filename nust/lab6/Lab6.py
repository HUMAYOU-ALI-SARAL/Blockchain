import hashlib
import base58
from cryptography.hazmat.primitives.asymmetric import ec
from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives import serialization


def generateEcdsaKeyPairs():
 ECDSAPrivatekey=ec.generate_private_key(ec.SECP256K1())
 ECDSAPublicKey=ECDSAPrivatekey.public_key()
 return ECDSAPrivatekey,ECDSAPublicKey



def bitcoinWalletAdress(ECDSAPublicKey):
  publicKeyBytes=ECDSAPublicKey.public_bytes(
  encoding=serialization.Encoding.X962,
  format=serialization.PublicFormat.UncompressedPoint)
  hashShaPubKey=hashlib.sha256(publicKeyBytes).hexdigest()
  hashRipeMd=hashlib.new('ripemd160',hashShaPubKey.encode()).hexdigest()
  return hashRipeMd


def checkSum(hashRipeMd160):
   firstHash=hashlib.sha256(hashRipeMd160.encode()).hexdigest()
   secondHash=hashlib.sha256(firstHash.encode()).hexdigest()
   return secondHash[:8]

def mainNetworkByte(hashRipeMd160):
    networkByte='00'
    return networkByte+hashRipeMd160
  

def base58Encoding(MainNet,CheckSum):
   adress=base58.b58encode(MainNet+CheckSum)
   return adress 



def main():
   ECDSAPrivateKey,ECDSAPublicKey=generateEcdsaKeyPairs()
   hashRipemd=bitcoinWalletAdress(ECDSAPublicKey)
   checksum=checkSum(hashRipemd)
   mainNet=mainNetworkByte(hashRipemd)
   result=base58Encoding(mainNet,checksum)
   print(result)


main()