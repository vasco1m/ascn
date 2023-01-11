import bcrypt
import sys

digest : bytes = bcrypt.hashpw(bytes(sys.argv[1], 'utf-8'), bcrypt.gensalt(rounds=10))
hashed_pw : str = digest.decode('ascii')

print(hashed_pw)
