from tkinter import * #Importe Tkinter pour l'interface graphique
import accueil #Importe le fichier accueil.py
import mysql.connector #Importe MySQL pour la base de données
import connexion #Pour avoir le fichier connexion.py
from tkinter import ttk #Pour avoir une liste déroulante



class Espace:
    def __init__(self):
        self.fenetre = Tk()
        #Reinilisaliser la fenetre et le fond d'ecran
        self.canvas = Canvas(self.fenetre, width=600, height=500, bg='white')
        self.canvas.pack(expand=YES, fill=BOTH)

        #Désactiver le changement de taille de la fenetre
        self.fenetre.resizable(width=False, height=False)

        #Changer le titre de la fenetre
        self.fenetre.title("Mon Espace | STEPHI PLACE")

        #Connexion à la base de données
        connexionBdd = mysql.connector.connect(
          host="localhost",
          user="root",
          passwd="",
          database="bdd-uf"
        )

        curseur = connexionBdd.cursor()

        #On récupère les agences
        curseur.execute("SELECT nom_agence FROM agence")

        agence = curseur.fetchall()
        agences=[agence[0][0],agence[1][0],agence[2][0],agence[3][0],agence[4][0],agence[5][0],agence[6][0],agence[7][0],agence[8][0],agence[9][0],
                agence[10][0],agence[11][0],agence[12][0],agence[13][0],agence[14][0],agence[15][0],agence[16][0],agence[17][0],agence[18][0],agence[19][0],
                 agence[20][0],agence[21][0],agence[22][0],agence[23][0],agence[24][0],agence[25][0],agence[26][0],agence[28][0],agence[28][0],agence[29][0],
                 agence[30][0],agence[31][0],agence[32][0],agence[33][0],agence[34][0],agence[35][0],agence[36][0],agence[38][0],agence[38][0],agence[39][0],
                 agence[40][0],agence[41][0],agence[42][0],agence[43][0],agence[44][0],agence[45][0],agence[46][0],agence[48][0],agence[48][0],agence[49][0]]


        self.listeAgence = ttk.Combobox(self.fenetre, values=agences)
        test=2
        self.listeAgence.current(test)
        self.listeAgence.place(x=120, y = 340)



        #Trouver l'id de l'agence choisis
        #sql="SELECT id_agence FROM agence WHERE nom_agence=%s"
        #nomAgence=(self.listeAgence.get(), )
        #curseur.execute(sql,nomAgence)
        #idAgence=curseur.fetchone()
        #idAgence=idAgence[0]

        

        self.boutonRetour=Button(self.fenetre, text="Retour à l'accueil", font=('helvetica',12,'bold')
                             , bg='#CA1809', fg='white', command=self.retour)
        self.boutonRetour.place(x=220, y=400, width=150, height=25)

        


#Fonction pour retourner en arrière
    def retour(self):

        self.fenetre.destroy()

        log=accueil.Accueil()
    
