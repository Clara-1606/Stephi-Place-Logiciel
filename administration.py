from tkinter import *#Importe Tkinter pour l'interface graphique
import mysql.connector #Importe MySQL 
import creer_agent #Importe le fichier creer_agent.py
import modifier_agence #Importe le fichier modifier_agence.py
import connexion #Importe le fichier connexion.py
import accueil #Importe le fichier accueil.py



class Administration:
    
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
        self.fenetre.title("ADMINISTRATION | STEPHI PLACE")

        #Creer l'intérieur du cadre
        self.frame = Frame(self.fenetre, height=400, width=450)
        self.frame.place(x=80, y=50)

        #Boutons
        self.boutonAjouterAgent=Button(self.frame, text="Ajouter un agent immobilier", command=self.creerAgent, bg="#CA1809", fg="white", font=('helvetica', 15, 'bold'))
        self.boutonAjouterAgent.place(x= 90, y=120, width=280, height=40)

        self.boutonModifierAgence=Button(self.frame, text="Modifier les frais d'agence", command=self.modifierAgence, bg="#CA1809",fg="white", font=('helvetica', 15, 'bold'))
        self.boutonModifierAgence.place(x= 90, y=180, width=280, height=40)

        self.boutonRetour=Button(self.frame, text="Retour", command=self.retour, bg="#CA1809",fg="white", font=('helvetica', 15, 'bold'))
        self.boutonRetour.place(x= 90, y=270, width=280, height=40)
        
            
        #Ouvre la fenetre
        self.fenetre.mainloop()
        


    #Accede à la page Créer un agent immobilier
    def creerAgent(self):
        
    # Detruit l'autre fenetre
        self.fenetre.destroy()

        #Ouvre la nouvelle fenetre
        log = creer_agent.CreerAgent()


    #Accede à la page modifier les agences
    def modifierAgence(self):
        self.fenetre.destroy()

        log=modifier_agence.ModifierAgence()
        

    #Fonction pour retourner en arrière
    def retour(self):

        self.fenetre.destroy()

        log=accueil.Accueil()
