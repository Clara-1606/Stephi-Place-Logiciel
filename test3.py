from tkinter import *
import hashlib

from hashlib import sha256

mdp = 'secret'

mdp = mdp.encode()

mdp_sign = sha256(mdp).hexdigest()

print (mdp_sign)

