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
        self.canvas = Canvas(self.fenetre, width=600, height=400, bg='white')
        self.canvas.pack(expand=YES, fill=BOTH)

        #Désactiver le changement de taille de la fenetre
        self.fenetre.resizable(width=False, height=False)

        #Changer le titre de la fenetre
        self.fenetre.title("CREER UN AGENT IMMOBILIER | STEPHI PLACE")

        self.frame = Frame(self.fenetre, height=360, width=560)
        self.frame.place(x=20, y=20)

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

        #Avoir le numéro de l'agence
        sql="SELECT id_agence FROM agent_immobilier WHERE mail=%s"
        mail=(connexion.Connexion.staticmail,)
        curseur.execute(sql,mail)
        global idAgence
        idAgence = curseur.fetchall()
        idAgence= idAgence[0][0]
        global agenceActuelle
        agenceActuelle=idAgence - 1 #Car le combox commence à 0 pour Paris
        

        sql="SELECT frais_agence FROM agence WHERE id_agence=%s"
        agence=(idAgence,)
        curseur.execute(sql,agence)
        global info
        info=curseur.fetchall()


        self.labTitre = Label(self.frame, text="Modifier les frais d'agence :",font=('helvetica', 20, 'underline bold'), fg="#CA1809")
        self.labTitre.place(x=100, y = 20)


        self.labAgence =Label(self.frame, text="Agence :")
        self.labAgence.config(font=("helvetica", 12, 'bold'))
        self.labAgence.place(x=20, y = 130)


        self.listeAgence = ttk.Combobox(self.frame, values=agences, width=35, state="disabled")
        self.listeAgence.current(agenceActuelle)
        self.listeAgence.place(x=20, y = 160)

        self.labFrais = Label(self.frame, text="Frais d'agence : ")
        self.labFrais.config(font=("helvetica", 12, 'bold'))
        self.labFrais.place(x=300, y = 130)

        self.frais =Entry(self.frame, font='helvetica 12', width=25)
        self.frais.place(x=300, y=  160)
        self.frais.insert(END, info[0][0])

        
        

         #Boutons valider et retour
        self.bouttonValider = Button(self.frame, text="Modifier", font='helvetica 15 bold',bg="#CA1809",fg="white", command=self.modifier)
        self.bouttonValider.place(x=240, y=300, width=110, height=25)

        self.boutonRetour=Button(self.frame, text="Retour", font=('helvetica',15,'bold')
                             , bg='#CA1809', fg='white', command=self.retour)
        self.boutonRetour.place(x=20, y=300, width=110, height=25)

        


#Fonction pour retourner en arrière
    def retour(self):

        self.fenetre.destroy()

        log=administration.Administration()


    def modifier(self):

        #Connexion à la base
        connexionBdd = mysql.connector.connect(
                host="localhost",
                user="root",
                passwd="",
                database="bdd-uf"
            )


        fraisAgence=(
            self.frais.get(),
            idAgence
            )

        curseur = connexionBdd.cursor()

        
        if self.frais.get()=="":
            messagebox.showinfo("Attention!","Veuillez renseigner tous les champs.")
        else :
            try:
                test = float(self.frais.get()) #On vérifie que c'est un chiffre décimal
            except:
                messagebox.showinfo("Message","Les frais d'agences doivent être un chiffre.")
                test=100
                
            if test>20 :
                messagebox.showinfo("Message","Les frais d'agences doivent être inférieur à 20.")
            else :
                sql="UPDATE agence SET frais_agence=%s WHERE id_agence=%s"
                curseur.execute(sql,fraisAgence)
                connexionBdd.commit()


                messagebox.showinfo("Message","Les frais d'agences ont été modifié.")


                self.fenetre.destroy()

                log=ModifierAgence()

