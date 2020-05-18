from tkinter import * #Importe Tkinter pour l'interface graphique
from tkinter import messagebox #Importe les messages "popup"
from tkinter import ttk #Pour avoir une liste déroulante
import mysql.connector #Importe MySQL pour la base de données
import annonce #Importe le fichier annonce.py
import modifier #Importe le fichier modifier.py
import datetime #Pour avoir la date du jour



class Creer: 
    
    def __init__(self):
        self.fenetre = Tk()
        #Reinilisaliser la fenetre et le fond d'ecran
        self.canvas = Canvas(self.fenetre, width=800, height=800, bg='white')
        self.canvas.pack(expand=YES, fill=BOTH)

        #Désactiver le changement de taille de la fenetre
        self.fenetre.resizable(width=False, height=False)

        ##changer le titre de la fenetre
        self.fenetre.title("Créer une annonce")


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

        #On récupère les dépendances
        curseur.execute("SELECT DISTINCT nom_dependance FROM dependance")

        dependance = curseur.fetchall()

        
        #Début du formulaire

        #Informations générales
        self.labInfoGeneral = Label(self.fenetre, text="Informations générales")
        self.labInfoGeneral.config(font=("Courier", 15, 'bold'))
        self.labInfoGeneral.place(x=20, y = 10)

        self.labType = Label(self.fenetre, text="Type de bien :")
        self.labType.config(font=("Courier", 12, 'bold'))
        self.labType.place(x=20, y = 60)

        global var
        var = IntVar()
        
        self.villa = Radiobutton(self.fenetre, text="Villa", variable=var, value=1)
        self.villa.place(x=200, y = 60 )
 
        self.appart = Radiobutton(self.fenetre, text="Appartement", variable=var, value=2)
        self.appart.place( x=300, y = 60 )

        
        self.labEtage = Label(self.fenetre, text="Etage :")
        self.labEtage.config(font=("Courier", 12, 'bold'))
        self.labEtage.place(x=500, y = 60)
        
        self.etage = Entry(self.fenetre, font='Courier 12', width=2)
        self.etage.place(x=590, y= 60)
        
        self.labNbPiece = Label(self.fenetre, text="Nombre de pièces :")
        self.labNbPiece.config(font=("Courier", 12, 'bold'))
        self.labNbPiece.place(x=20, y = 100)
        
        self.nbPiece =Entry(self.fenetre, font='Courier 12', width=2)
        self.nbPiece.place(x=220, y= 100)
        
        self.labNbChambre = Label(self.fenetre, text="Nombre de chambres :")
        self.labNbChambre.config(font=("Courier", 12, 'bold'))
        self.labNbChambre.place(x=500, y = 100)
        
        self.nbChambre =Entry(self.fenetre, font='Courier 12', width=2)
        self.nbChambre.place(x=720, y= 100)
        
        self.labSuperficie= Label(self.fenetre, text="Superficie :")
        self.labSuperficie.config(font=("Courier", 12, 'bold'))
        self.labSuperficie.place(x=20, y = 140)
        
        self.superficie=Entry(self.fenetre, font='Courier 12', width=4)
        self.superficie.place(x=180, y=  140)
        

        #Adresses
        self.labAdresses = Label(self.fenetre, text="Information d'adresse : ")
        self.labAdresses.config(font=("Courier", 15, 'bold'))
        self.labAdresses.place(x=20, y = 210)

        self.labAdresse=Label(self.fenetre, text="Adresse :")
        self.labAdresse.config(font=("Courier", 12, 'bold'))
        self.labAdresse.place(x=20, y = 260)
        
        self.adresse=Entry(self.fenetre, font='Courier 12')
        self.adresse.place(x=150, y=  260)

        self.labVille =Label(self.fenetre, text="Ville :")
        self.labVille.config(font=("Courier", 12, 'bold'))
        self.labVille.place(x=500, y = 260)
        
        self.ville =Entry(self.fenetre, font='Courier 12')
        self.ville.place(x=590, y=  260)
        
        self.labComplementAdresse=Label(self.fenetre, text="Complément d'adresse :")
        self.labComplementAdresse.config(font=("Courier", 12, 'bold'))
        self.labComplementAdresse.place(x=20, y = 300)
        
        self.complementAdresse=Entry(self.fenetre, font='Courier 12')
        self.complementAdresse.place(x=250, y= 300)
        
        self.labCodePostal =Label(self.fenetre, text="Code Postal :")
        self.labCodePostal.config(font=("Courier", 12, 'bold'))
        self.labCodePostal.place(x=500, y = 300)
        
        self.codePostal =Entry(self.fenetre, font='Courier 12', width = 5)
        self.codePostal.place(x=650, y= 300)
        
        self.labAgence =Label(self.fenetre, text="Agence :")
        self.labAgence.config(font=("Courier", 12, 'bold'))
        self.labAgence.place(x=20, y = 340)
        

        self.listeAgence = ttk.Combobox(self.fenetre, values=agences)
        self.listeAgence.current(0)
        self.listeAgence.place(x=120, y = 340)



        #Autres informations
        self.labAutres = Label(self.fenetre, text="Autres Informations : ")
        self.labAutres.config(font=("Courier", 15, 'bold'))
        self.labAutres.place(x=20, y = 410)

        self.labDependance =Label(self.fenetre, text="Dependances :")
        self.labDependance.config(font=("Courier", 12, 'bold'))
        self.labDependance.place(x=20, y = 460)
        
        self.listeDep = ttk.Combobox(self.fenetre, values=dependance)
        self.listeDep.current(0)
        self.listeDep.place(x=160, y = 460)
        
        self.labSuperficieDep =Label(self.fenetre, text="Superficie :")
        self.labSuperficieDep.config(font=("Courier", 12, 'bold'))
        self.labSuperficieDep.place(x=500, y = 460)
        
        self.superficieDep =Entry(self.fenetre, font='Courier 12', width=4)
        self.superficieDep.place(x=640, y=460)
        
        self.labDescription =Label(self.fenetre, text="Description :")
        self.labDescription.config(font=("Courier", 12, 'bold'))
        self.labDescription.place(x=20, y = 500)

        self.description =Entry(self.fenetre, font='Courier 12')
        self.description.place(x=170, y= 500)

        self.labPhoto =Label(self.fenetre, text="Photo :")
        self.labPhoto.config(font=("Courier", 12, 'bold'))
        self.labPhoto.place(x=500, y = 500)
        
        self.photo =Entry(self.fenetre, font='Courier 12')
        self.photo.place(x=600, y=  500)

        
        #Prix 
        self.labPrix = Label(self.fenetre, text="Prix : ")
        self.labPrix.config(font=("Courier", 15, 'bold'))
        self.labPrix.place(x=20, y = 560)
        
        self.labPrixMin =Label(self.fenetre, text="Prix Min :")
        self.labPrixMin.config(font=("Courier", 12, 'bold'))
        self.labPrixMin.place(x=20, y = 610)
        
        self.prixMin =Entry(self.fenetre, font='Courier 12')
        self.prixMin.place(x=140, y=  610)
        
        self.labPrixMax =Label(self.fenetre, text="Prix Max :")
        self.labPrixMax.config(font=("Courier", 12, 'bold'))
        self.labPrixMax.place(x=500, y = 610)
        
        self.prixMax =Entry(self.fenetre, font='Courier 12')
        self.prixMax.place(x=620, y=  610)
        
        self.labPrixVente =Label(self.fenetre, text="Prix de Vente :")
        self.labPrixVente.config(font=("Courier", 12, 'bold'))
        self.labPrixVente.place(x=20, y = 650)
        
        self.prixVente =Entry(self.fenetre, font='Courier 12')
        self.prixVente.place(x=200, y= 650)

        
        #Boutons valider et retour
        self.bouttonValider = Button(self.fenetre, text="Valider", font='Courier 15 bold',bg="#CA1809",fg="white", command=self.valider)
        self.bouttonValider.place(x=330, y=720, width=150, height=25)

        self.boutonRetour=Button(self.fenetre, text="Retour", font=('courier',15,'bold')
                             , bg='#CA1809', fg='white', command=self.retour)
        self.boutonRetour.place(x=20, y=720, width=150, height=25)




#Fonction pour retourner en arrière
    def retour(self):

        self.fenetre.destroy()

        log=annonce.Annonce()


        
#Fonction pour valider le bien
    def valider(self):

        print(self.listeAgence.get())
        print(var.get())
        
        #Connexion à la base
        connexionBdd = mysql.connector.connect(
                host="localhost",
                user="root",
                passwd="",
                database="bdd-uf"
            )

        curseur = connexionBdd.cursor()


        #Trouver l'id de l'agence choisis
        sql="SELECT id_agence FROM agence WHERE nom_agence=%s"
        nomAgence=(self.listeAgence.get(), )
        curseur.execute(sql,nomAgence)
        idAgence=curseur.fetchone()
        idAgence=idAgence[0]

        #Avoir la date du jour
        self.date = datetime.datetime.today().strftime('%Y-%m-%d')

        #Id status
        self.status=1

        #Mettre les donnees dans un tuple (données)
        donneeBien = (
            var.get(),
            self.etage.get(),
            self.nbPiece.get(),
            self.nbChambre.get(),
            self.superficie.get(),
            idAgence,
            self.description.get(),
            self.prixMin.get(),
            self.prixMax.get(),
            self.prixVente.get(),
            self.date,
            self.status
            )

        donneeAdresse =(
            self.adresse.get(),
            self.complementAdresse.get(),
            self.ville.get(),
            self.codePostal.get()
        )

        donneeDep= (
            self.listeDep.get(),
            self.superficieDep.get()
            )

        if var.get()==0 or self.nbPiece.get()=="" or self.nbChambre.get()=="" or self.superficie.get()=="" or self.adresse.get()=="" or self.ville.get()=="" or self.codePostal.get()=="" or self.superficieDep.get()=="" or self.description.get()=="" or self.prixMin.get()=="" or self.prixMax.get()=="" or self.prixVente.get()=="" :
             messagebox.showinfo("Attention!","Veuillez renseigner tous les champs.")
        else :
            sql="INSERT INTO adresse (adresse, complement_adresse,code_postal,ville) VALUE (%s,%s,%s,%s)"
            curseur.execute(sql,donneeAdresse)
            connexionBdd.commit()

            curseur.execute("SELECT id_adresse FROM adresse ORDER BY id_adresse DESC")
            idAdresse=curseur.fetchone()
            idAdresse=idAdresse[0]
            print(idAdresse)
            
            
            #sql="INSERT INTO biens (id_type_bien, etage,nb_piece, nb_chambre,superficie,id_agence, descriptif, prix_min, prix_max, prix_vente, date_ajout, id_statut) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
            #curseur.execute(sql,donneeBien)
            #connexionBdd.commit()

            print(curseur.rowcount, "was inserted.")

            #self.fenetre.destroy()

            #log=annonce.Annonce()


       


            
