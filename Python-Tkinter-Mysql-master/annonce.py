from tkinter import *
import db.db
import mysql.connector


class Annonce:
    def __init__(self):
        self.win = Tk()
        #Reinilisaliser la fenetre et le fond d'ecran
        self.canvas = Canvas(self.win, width=600, height=500, bg='red')
        self.canvas.pack(expand=YES, fill=BOTH)

        #Désactiver le changement de taille de la fenetre
        self.win.resizable(width=False, height=False)

        ##changer le titre de la fenetre
        self.win.title("Gestion des annonces")

        con = mysql.connector.connect(
        host="localhost",
        user="root",
        passwd="",
        database="bdd-uf"
        )   

        cursor = con.cursor()


        cursor.execute("SELECT biens.id_bien, type_bien.libelle, superficie FROM `agent_immobilier` inner join agence on agent_immobilier.id_agence=agence.id_agence Inner join biens on biens.id_agence=agence.id_agence inner join type_bien on type_bien.id_type_bien = biens.id_type_bien Where prenom='Chad'")
        test2 = cursor.fetchall()
        z=0
        x = 0
        for nom in test2:
            idBien = Label(self.win, text="Id bien : ", bg="pink")
            idBien.place(x=100, y=30+z, width=100, height=25)
            label = Label(self.win, text=test2[x][0:3], bg="yellow")
            label.place(x=180, y=30+z, width=180, height=25)
            m2=Label(self.win, text="m2", bg="green")
            m2.place(x=330, y=30+z, width=50, height=25)
            z=z+50
            x=x+1

            
            

        
            
            
            


        
