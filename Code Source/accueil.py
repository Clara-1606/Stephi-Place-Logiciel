from tkinter import *#Importe Tkinter pour l'interface graphique
import mysql.connector #Importe MySQL 
import espace #Importe le fichier espace.py
import annonce #Importe le fichier annonce.py
import connexion #Importe le fichier connexion.py
import administration #Importe le fichier administration



class Accueil:
    
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

        #Boutons
        self.boutonEspace=Button(self.frame, text="Mon Espace", command=self.espace, bg="#CA1809", fg="white", font=('helvetica', 15, 'bold'))
        self.boutonEspace.place(x= 100, y=100, width=250, height=30)

        self.boutonAnnonce=Button(self.frame, text="Gestion des annonces", command=self.annonce, bg="#CA1809",fg="white", font=('helvetica', 15, 'bold'))
        self.boutonAnnonce.place(x= 100, y=140, width=250, height=30)
        
        self.boutonDocument=Button(self.frame, text="Gestion des documents", bg="#CA1809", fg="white", state='disabled', font=('helvetica', 15, 'bold'))
        self.boutonDocument.place(x= 100, y=180, width=250, height=30)

        self.boutonProposition=Button(self.frame, text="Gestion des propositions", bg="#CA1809",fg="white", state="disabled", font=('helvetica', 15, 'bold'))
        self.boutonProposition.place(x= 100, y=220, width=250, height=30)


        #Connexion à la base de données
        connexionBdd = mysql.connector.connect(
            host="localhost",
            user="root",
            passwd="",
            database="bdd-uf"
        )

        curseur = connexionBdd.cursor()


        sql="SELECT est_admin FROM `agent_immobilier` WHERE mail=%s"
        mail=(connexion.Connexion.staticmail,) #On récupère l'email entré par l'agent

        curseur.execute(sql, mail)
        admin = curseur.fetchone()
        estAdmin=admin[0]

        #Si l'agent est Admin un bouton supplémentaire apparait
        if estAdmin==1 :
            self.boutonAdmin=Button(self.frame, text="Administration", command=self.administration, bg="#CA1809", fg="white",font=('helvetica', 15, 'bold'))
            self.boutonAdmin.place(x= 100, y=260, width=250, height=30)


        self.boutonDeconnexion=Button(self.frame, text="Se déconnecter", font=('helvetica',15,'bold')
                             , bg='#CA1809', fg='white', command=self.deconnexion)
        self.boutonDeconnexion.place(x=100, y=350, width=250, height=30)
            
        #Ouvre la fenetre
        self.fenetre.mainloop()
        

    #Accede à la page Espace
    def espace(self):
        
    # Detruit l'autre fenetre
        self.fenetre.destroy()

        #Ouvre la nouvelle fenetre
        log = espace.Espace()
        

    #Accede à la page Espace
    def annonce(self):
        
    # Detruit l'autre fenetre
        self.fenetre.destroy()

        #Ouvre la nouvelle fenetre
        log = annonce.Annonce()


    def administration(self):
        self.fenetre.destroy()

        log=administration.Administration()

    #Fonction pour se deconnecter
    def deconnexion(self):

        self.fenetre.destroy()

        log=connexion.Connexion()
        log.frame()
        

        
        
