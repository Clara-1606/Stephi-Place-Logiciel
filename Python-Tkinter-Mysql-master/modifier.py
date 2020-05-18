from tkinter import * #Importe Tkinter pour l'interface graphique
import mysql.connector #Importe MySQL pour la base de données
import annonce #Importe le fichier annonce.py


class Modifie: 
    
    def __init__(self):
        self.win = Tk()
        #Reinilisaliser la fenetre et le fond d'ecran
        self.canvas = Canvas(self.win, width=600, height=500, bg='white')
        self.canvas.pack(expand=YES, fill=BOTH)

        #Désactiver le changement de taille de la fenetre
        self.win.resizable(width=False, height=False)

        ##changer le titre de la fenetre
        self.win.title("Modifie une annonce")

        
        #Connexion à la base de données
        con = mysql.connector.connect(
            host="localhost",
            user="root",
            passwd="",
            database="bdd-uf"
        )

        cursor = con.cursor()
