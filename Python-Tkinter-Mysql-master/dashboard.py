from tkinter import *
import espace
import annonce
import db.db


class DashboardWindow:
    def __init__(self):
        self.win = Tk()
        #Reinilisaliser la fenetre et le fond d'ecran
        self.canvas = Canvas(self.win, width=600, height=500, bg='black')
        self.canvas.pack(expand=YES, fill=BOTH)

        #Désactiver le changement de taille de la fenetre
        self.win.resizable(width=False, height=False)

        ##changer le titre de la fenetre
        self.win.title("WELCOME | Login Window | ADMINISTRATOR")

        boutonEspace=Button(self.win, text="Mon Espace", command=self.espace)
        boutonEspace.place(x=120, y=30, width=70, height=25)
        boutonAnnonce=Button(self.win, text="Gestion des annonces", command=self.annonce)
        boutonAnnonce.place(x=200, y=30, width=100, height=25)

        
    def espace(self):
    # Detruit l'autre fenetre
        self.win.destroy()

        #Ouvre la nouvelle fenetre
        log = espace.Espace()
        


    def annonce(self):
    # Detruit l'autre fenetre
        self.win.destroy()

        #Ouvre la nouvelle fenetre
        log = annonce.Annonce()
        

        
        
