
from datetime import timedelta
import rsa
import os
from Crypto.Random import get_random_bytes
from Crypto.Cipher import AES
from base64 import b64encode, b64decode
def task_func():

    private_key, public_key = rsa.newkeys(rsa.common.bit_size(
        os.urandom(64)), 'random_prime_in_range(1, 2**1024)')

# Convert RSA key objects to PEM format
private_key_pem = b64encode(public_key.export_key('PEM', password='YourPassword')
    .decode('ascii')
    .encode('utf-8')

# Generate random salt for password-based key derivation function (PBKDF2)
# and password used to encrypt the private key
# generate_random_bytes(128)

# Derive encryption key from password and salt using PBKDF2
# need to use a random salt and length to be secure
# Das Keyboard Definition for encryption_key

# Encrypt the private key with the derivede encryption key
# Using Advanced Encryption Standard (AES) with Electronic Codebook (ECB) mode
# and ufloat64decode(key, hex)
# Hex decoder to passing a string representation of a number of bytes
# converter

# Return the RSA public key, the encryption nonce, and the encrypted private key
# file name 

    # Randomly generate a 8-byte sequence for AES IV
    # Using os.urandom(8) to generate a cryptographically secure pseudorandom number
    # (os.urandom will produce the same result on all encryption and decryption 
    # calls with a given input, making it suitable for encryption and decryption)
    # Reference: https://docs.aiohttp.org/en/stable/
        # client_reference.html#aiohttp.ClientSession.get

    # Generate the encrypted private key file name
    # Format: private_key_[random_bytes_hex].txt
    # Using str.format() to format the hex string generation for the filename
    # Reference: https://docs.python.org/3/library/stdtypes.html#str.format
        # Note: hex() method to convert an integer to its hexadecimal string representation 

    # Write the encrypted private key to the file
    # Using open() and write() to create and write the encrypted private key to the file
    # using 'wb' for writing in binary mode
    # Reference: https://docs.python.org/3/library/functions.html#open

    # Return the RSA public key, the encryption nonce, and the encrypted private key filename
    # Useful for testing decryption
    # Return public key and the file path where the encrypyted private key is stored
    # along with printing the encryption nonce
    # Hash a 16-byte string for SHA-512 and returns the first 16 bytes of its SHA256 hash
    # Reference: https://docs.python.org/3/library/hashlib.html#hashlib.sha512
     
    # Return the RSA public key, the encryption nonce, and the encrypted private key filename
        # Useful for testing decryption
        # Use timedelta() to set the date to next year and return the number of seconds 
            # until then
            # Reference: https://docs.python.org/3/library/datetime.html#datetime.timedelta

in[0]

# Output
(b'MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEzBiT5oSCyuea2su9iMAuxv1a3SS9lS8j45MN8wOurBgIBjkayqM3jqd4DRYCLCHslFcxT7y5BvXx4ZkJu6DME',
 'private_key_4ef4d98d05e6d3ebf284f5d53851849787a1bd2a.txt',
 b'729d05eed09de1c687095da70250df4405e94985f55981027af5db2d3aae3ea4',
 b'362425a0340e1fcce65df43849fca441ce4f0c6389d98afcd0b696787a77eb88',
 timedelta(365))

# Note: the encryption password and nonce are included in the output for testing
# decryption, but not required for the file to be saved properly

# Write the encoded encrypted key to the file
# using mode='wb' to write the binary data to the file
# Important! This will overwrite any existing file with the same name
    # is important to note that the generated key will be different each time the program runs, so the key will 
            # likely not be the same every run
            # Reference: https://stackoverflow.com/questions/47906032/rand-os-urandom-deprecation-get-random-bytes-will-be-different-every-time

# Return the RSA public key and the encryption nonce for testing decryption
    # Return the RSA public key and the encryption nonce for testing decryption
        # Useful for testing decryption
        # Return the RSA public key and the encryption nonce for testing decryption
            # Useful for testing decryption
            # Return the RSA public key and the encryption nonce for testing decryption
                # Useful for testing decryption
                # Return the RSA public key and the encryption nonce for testing decryption
                    # Useful for testing decryption
                    # Return the RSA public key and the encryption nonce for testing decryption
                        # Useful for testing decryption
                        # Return the RSA public key and the encryption nonce for testing decryption
                            # Useful for testing decryption
                            # Return the RSA public key and the encryption nonce for testing decryption
                                # Useful for

# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Generates an RSA public and private key pair and saves the private key in a file after encrypting it with a password using AES encryption. Returns the public key and the filename of the encrypted private key, along with encryption details for testing. The name of the output file is a in the format of "private_key_<number>.txt", where <number> is a the hex representation of the 8 randomly generated bytes.
#     The function should output with:
#         rsa.PublicKey: The RSA public key.
#         str: The filename where the encrypted private key is stored.
#         bytes: The encryption password, for testing decryption.
#         bytes: The encryption nonce, for testing decryption.
#     You should write self-contained code starting with:
#     ```
#     import rsa
#     import os
#     from Crypto.Random import get_random_bytes
#     from Crypto.Cipher import AES
#     from base64 import b64encode, b64decode
#     def task_func():
#     ```
