from tkinter import *
import hashlib

mot_de_passe = hashlib.sha384(b"mot de passe")
print(mot_de_passe)
mot_de_passe.hexdigest()
print(mot_de_passe)


