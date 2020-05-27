from tkinter import *#Importe Tkinter pour l'interface graphique
import mysql.connector #Importe MySQL 
import espace #Importe le fichier espace.py
import annonce #Importe le fichier annonce.py
import connexion #Importe le fichier connexion.py
import administration #Importe le fichier administration



class ModifierAgence:
    
    def __init__(self):
        self.fenetre = Tk()
        #Reinilisaliser la fenetre et le fond d'ecran
        self.canvas = Canvas(self.fenetre, width=600, height=500, bg='white')
        self.canvas.pack(expand=YES, fill=BOTH)

        #Montrer la fenetre au centre de l'écran
        largeur = self.fenetre.winfo_screenwidth()
        hauteur = self.fenetre.winfo_screenheight()
        x = int(largeur / 2 - 600 / 2)
        y = int(hauteur / 2 - 500 / 2)
        str1 = "600x500+" + str(x) + "+" + str(y)
        self.fenetre.geometry(str1)

        #Désactiver le changement de taille de la fenetre
        self.fenetre.resizable(width=False, height=False)

        ##changer le titre de la fenetre
        self.fenetre.title("ACCUEIL | STEPHI PLACE")

        #Creer l'intérieur du cadre
        self.frame = Frame(self.fenetre, height=400, width=450)
        self.frame.place(x=80, y=50)

  

            
        #Ouvre la fenetre
        self.fenetre.mainloop()
