from tkinter import * #Importe Tkinter pour l'interface graphique
from tkinter import messagebox #Importe les messages "popup"
import accueil #Importe le fichier accueil.py
import mysql.connector #Importe MySQL pour la base de données
import administration #Importe le fichier administration.py
from tkinter import ttk #Pour avoir une liste déroulante
from hashlib import md5 #Pour hasher le mot de passe



class CreerAgent:
    def __init__(self):
        self.fenetre = Tk()
        #Reinilisaliser la fenetre et le fond d'ecran
        self.canvas = Canvas(self.fenetre, width=650, height=700, bg='white')
        self.canvas.pack(expand=YES, fill=BOTH)

        #Désactiver le changement de taille de la fenetre
        self.fenetre.resizable(width=False, height=False)

        #Changer le titre de la fenetre
        self.fenetre.title("CREER UN AGENT IMMOBILIER | STEPHI PLACE")

        self.frame = Frame(self.fenetre, height=660, width=610)
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


        self.labTitre = Label(self.frame, text="Ajouter un agent immobilier :",font=('helvetica', 20, 'underline bold'), fg="#CA1809")
        self.labTitre.place(x=120, y = 20)


        self.labPrenom = Label(self.frame, text="Prenom :")
        self.labPrenom.config(font=("helvetica", 12, 'bold'))
        self.labPrenom.place(x=20, y = 90)
        
        self.prenom = Entry(self.frame, font='helvetica 12', width=25)
        self.prenom.place(x=20, y= 120)

        
        self.labNom = Label(self.frame, text="Nom :")
        self.labNom.config(font=("helvetica", 12, 'bold'))
        self.labNom.place(x=360, y = 90)
        
        self.nom =Entry(self.frame, font='helvetica 12', width=25)
        self.nom.place(x=360, y= 120)


        
        self.labDateNaissance = Label(self.frame, text="Date de naissance : ")
        self.labDateNaissance.config(font=("helvetica", 12, 'bold'))
        self.labDateNaissance.place(x=20, y = 170)

        self.dateNaissance=Entry(self.frame, font='helvetica 12', width=25)
        self.dateNaissance.place(x=20, y=  200)

        self.labFormat= Label(self.frame, text="Format YYYY-MM-DD ")
        self.labFormat.config(font=("helvetica", 8, 'bold'))
        self.labFormat.place(x=20, y = 225)
  
    

        self.labTelephone =Label(self.frame, text="Numéro de téléphone :")
        self.labTelephone.config(font=("helvetica", 12, 'bold'))
        self.labTelephone.place(x=360, y = 170)
        
        self.telephone =Entry(self.frame, font='helvetica 12', width=25)
        self.telephone.place(x=360, y=  200)


        self.labEmail = Label(self.frame, text="Email :")
        self.labEmail.config(font=("helvetica", 12, 'bold'))
        self.labEmail.place(x=20, y = 260)
        
        self.email =Entry(self.frame, font='helvetica 12', width=25)
        self.email.place(x=20, y= 290)

        
        self.labMdp= Label(self.frame, text="Mot de passe :")
        self.labMdp.config(font=("helvetica", 12, 'bold'))
        self.labMdp.place(x=360, y = 260)
        
        self.mdp=Entry(self.frame, font='helvetica 12',show='*', width=25)
        self.mdp.place(x=360, y=  290)

        self.labAdresse=Label(self.frame, text="Adresse :")
        self.labAdresse.config(font=("helvetica", 12, 'bold'))
        self.labAdresse.place(x=20, y=340)

        
        self.adresse=Entry(self.frame, font='helvetica 12', width=25)
        self.adresse.place(x=20, y=  370)

        
        self.labComplementAdresse=Label(self.frame, text="Complément d'adresse :")
        self.labComplementAdresse.config(font=("helvetica", 12, 'bold'))
        self.labComplementAdresse.place(x=360, y = 340)
        
        self.complementAdresse=Entry(self.frame, font='helvetica 12', width=25)
        self.complementAdresse.place(x=360, y= 370)

        self.labVille =Label(self.frame, text="Ville :")
        self.labVille.config(font=("helvetica", 12, 'bold'))
        self.labVille.place(x=20, y = 420)
        
        self.ville =Entry(self.frame, font='helvetica 12', width=25)
        self.ville.place(x=20, y=  450)

        
        self.labCodePostal =Label(self.frame, text="Code Postal :")
        self.labCodePostal.config(font=("helvetica", 12, 'bold'))
        self.labCodePostal.place(x=360, y = 420)
        
        self.codePostal =Entry(self.frame, font='helvetica 12', width=25)
        self.codePostal.place(x=360, y= 450)


        self.labAgence =Label(self.frame, text="Agence :")
        self.labAgence.config(font=("helvetica", 12, 'bold'))
        self.labAgence.place(x=20, y = 500)


        self.listeAgence = ttk.Combobox(self.frame, values=agences, width=35)
        self.listeAgence.current(0)
        self.listeAgence.place(x=20, y = 530)

        global var
        var = IntVar()


        self.labAdmin =Label(self.frame, text="Est admin :")
        self.labAdmin.config(font=("helvetica", 12, 'bold'))
        self.labAdmin.place(x=360, y = 500)
        
        self.adminOui = Radiobutton(self.frame, text="Oui", variable=var, value=1)
        self.adminOui.place(x=360, y = 530 )
 
        self.adminNon = Radiobutton(self.frame, text="Non", variable=var, value=0)
        self.adminNon.place(x=420, y = 530 )
        

         #Boutons valider et retour
        self.bouttonValider = Button(self.frame, text="Ajouter", font='helvetica 15 bold',bg="#CA1809",fg="white", command=self.creer)
        self.bouttonValider.place(x=250, y=620, width=110, height=25)

        self.boutonRetour=Button(self.frame, text="Retour", font=('helvetica',15,'bold')
                             , bg='#CA1809', fg='white', command=self.retour)
        self.boutonRetour.place(x=20, y=620, width=110, height=25)

        


#Fonction pour retourner en arrière
    def retour(self):

        self.fenetre.destroy()

        log=administration.Administration()


    def creer(self):

        #Connexion à la base
        connexionBdd = mysql.connector.connect(
                host="localhost",
                user="root",
                passwd="",
                database="bdd-uf"
            )


        infoAdresse=(
            self.adresse.get(),
            self.complementAdresse.get(),
            self.ville.get(),
            self.codePostal.get(),
            )
    

        curseur = connexionBdd.cursor()

        
        if self.prenom.get()=="" or self.nom.get()=="" or self.dateNaissance.get()=="" or self.adresse.get()=="" or self.ville.get()=="" or self.codePostal.get()=="" or self.telephone.get()=="" or self.email.get()=="" :
             messagebox.showinfo("Attention!","Veuillez renseigner tous les champs.")
        else :
            sql="INSERT INTO adresse (adresse, complement_adresse,code_postal,ville) VALUE (%s,%s,%s,%s)"
            curseur.execute(sql,infoAdresse)
            connexionBdd.commit()

            curseur.execute("SELECT id_adresse FROM adresse ORDER BY id_adresse DESC")
            idAdresse=curseur.fetchall()
            idAdresse=idAdresse[0][0]


            #Trouver l'id de l'agence choisis
            sql="SELECT id_agence FROM agence WHERE nom_agence=%s"
            nomAgence=(self.listeAgence.get(), )
            curseur.execute(sql,nomAgence)
            idAgence=curseur.fetchone()
            idAgence=idAgence[0]

            mdp=self.mdp.get()
            mdp=mdp.encode()
            mdpHash = md5(mdp).hexdigest()
            

            infoPerso = (
                self.prenom.get(),
                self.nom.get(),
                self.dateNaissance.get(),
                self.telephone.get(),
                self.email.get(),
                mdpHash,
                idAgence,
                idAdresse,
                var.get()
                )
            print(infoPerso)

            sql="INSERT INTO agent_immobilier (prenom, nom, date_naissance, numero_telephone, mail, mot_de_passe, id_agence, id_adresse, est_admin) VALUES ( %s,%s,%s,%s,%s,%s,%s,%s,%s)"
            curseur.execute(sql,infoPerso)
            connexionBdd.commit()

            messagebox.showinfo("Message","L'agent a bien été ajouté.")


            self.fenetre.destroy()

            log=CreerAgent()
