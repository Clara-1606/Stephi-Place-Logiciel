from tkinter import *
import db.db


class Espace:
    def __init__(self):
        self.win = Tk()
        #Reinilisaliser la fenetre et le fond d'ecran
        self.canvas = Canvas(self.win, width=600, height=500, bg='white')
        self.canvas.pack(expand=YES, fill=BOTH)

        #Désactiver le changement de taille de la fenetre
        self.win.resizable(width=False, height=False)

        ##changer le titre de la fenetre
        self.win.title("Mon Espace")
