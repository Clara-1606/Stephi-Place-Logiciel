from tkinter import * #Importe Tkinter pour l'interface graphique
from tkinter import messagebox #Importe les messages "popup"
from tkinter import ttk #Pour avoir une liste déroulante
import mysql.connector #Importe MySQL pour la base de données
import annonce #Importe le fichier annonce.py
import datetime #Pour avoir la date du jour
import connexion #Importe le fichier connexion.py



class CreerBien:

    
    def __init__(self):
        self.fenetre = Tk()
        #Reinilisaliser la fenetre et le fond d'ecran
        self.canvas = Canvas(self.fenetre, width=850, height=800, bg='white')
        self.canvas.pack(expand=YES, fill=BOTH)

        #Désactiver le changement de taille de la fenetre
        self.fenetre.resizable(width=False, height=False)

        ##changer le titre de la fenetre
        self.fenetre.title("CREER UN BIEN | STEPHI PLACE")


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


        #Avoir le numéro de l'agence
        sql="SELECT id_agence FROM agent_immobilier WHERE mail=%s"
        mail=(connexion.Connexion.staticmail,)
        curseur.execute(sql,mail)
        global idAgence
        idAgence = curseur.fetchall()
        idAgence= idAgence[0][0]
        global agenceActuelle
        agenceActuelle=idAgence - 1

        
        #Début du formulaire

        self.frame = Frame(self.fenetre, height=780, width=810)
        self.frame.place(x=20, y=20)

        #Informations générales
        self.labInfoGeneral = Label(self.frame, text="Informations générales", fg="#CA1809")
        self.labInfoGeneral.config(font=("helvetica", 15, 'bold'))
        self.labInfoGeneral.place(x=20, y = 10)

        self.labType = Label(self.frame, text="Type de bien :")
        self.labType.config(font=("helvetica", 12, 'bold'))
        self.labType.place(x=20, y = 60)

        global var
        var = IntVar()
        
        self.villa = Radiobutton(self.frame, text="Villa", variable=var, value=1)
        self.villa.place(x=180, y = 60 )
 
        self.appart = Radiobutton(self.frame, text="Appartement", variable=var, value=2)
        self.appart.place( x=280, y = 60 )

        
        self.labEtage = Label(self.frame, text="Etage :")
        self.labEtage.config(font=("helvetica", 12, 'bold'))
        self.labEtage.place(x=500, y = 60)
        
        self.etage = Entry(self.frame, font='helvetica 12', width=2)
        self.etage.place(x=570, y= 60)
        
        self.labNbPiece = Label(self.frame, text="Nombre de pièces :")
        self.labNbPiece.config(font=("helvetica", 12, 'bold'))
        self.labNbPiece.place(x=20, y = 100)
        
        self.nbPiece =Entry(self.frame, font='helvetica 12', width=2)
        self.nbPiece.place(x=200, y= 100)
        
        self.labNbChambre = Label(self.frame, text="Nombre de chambres :")
        self.labNbChambre.config(font=("helvetica", 12, 'bold'))
        self.labNbChambre.place(x=500, y = 100)
        
        self.nbChambre =Entry(self.frame, font='helvetica 12', width=2)
        self.nbChambre.place(x=700, y= 100)
        
        self.labSuperficie= Label(self.frame, text="Superficie :")
        self.labSuperficie.config(font=("helvetica", 12, 'bold'))
        self.labSuperficie.place(x=20, y = 140)
        
        self.superficie=Entry(self.frame, font='helvetica 12', width=4)
        self.superficie.place(x=140, y=  140)

        self.labVendeur= Label(self.frame, text="Id Vendeur :")
        self.labVendeur.config(font=("helvetica", 12, 'bold'))
        self.labVendeur.place(x=500, y = 140)

        self.vendeur=Entry(self.frame, font='helvetica 12', width=4)
        self.vendeur.place(x=610, y=  140)
        

        #Adresses
        self.labAdresses = Label(self.frame, text="Information d'adresse : ",fg="#CA1809")
        self.labAdresses.config(font=("helvetica", 15, 'bold'))
        self.labAdresses.place(x=20, y = 210)

        self.labAdresse=Label(self.frame, text="Adresse :")
        self.labAdresse.config(font=("helvetica", 12, 'bold'))
        self.labAdresse.place(x=20, y = 260)
        
        self.adresse=Entry(self.frame, font='helvetica 12')
        self.adresse.place(x=130, y=  260)

        self.labVille =Label(self.frame, text="Ville :")
        self.labVille.config(font=("helvetica", 12, 'bold'))
        self.labVille.place(x=500, y = 260)
        
        self.ville =Entry(self.frame, font='helvetica 12')
        self.ville.place(x=570, y=  260)
        
        self.labComplementAdresse=Label(self.frame, text="Complément d'adresse :")
        self.labComplementAdresse.config(font=("helvetica", 12, 'bold'))
        self.labComplementAdresse.place(x=20, y = 300)
        
        self.complementAdresse=Entry(self.frame, font='helvetica 12')
        self.complementAdresse.place(x=230, y= 300)
        
        self.labCodePostal =Label(self.frame, text="Code Postal :")
        self.labCodePostal.config(font=("helvetica", 12, 'bold'))
        self.labCodePostal.place(x=500, y = 300)
        
        self.codePostal =Entry(self.frame, font='helvetica 12', width = 5)
        self.codePostal.place(x=630, y= 300)
        
        self.labAgence =Label(self.frame, text="Agence :")
        self.labAgence.config(font=("helvetica", 12, 'bold'))
        self.labAgence.place(x=20, y = 340)
        

        self.listeAgence = ttk.Combobox(self.frame, values=agences, state="disabled")
        self.listeAgence.current(agenceActuelle)
        self.listeAgence.place(x=120, y = 340)
        self.attention = Label(self.frame, text="Attention pour modifer l'agence il faut la modifer dans votre espace")



        #Autres informations
        self.labAutres = Label(self.frame, text="Autres Informations : ",fg="#CA1809")
        self.labAutres.config(font=("helvetica", 15, 'bold'))
        self.labAutres.place(x=20, y = 410)

        self.labDependance =Label(self.frame, text="Dependances :")
        self.labDependance.config(font=("helvetica", 12, 'bold'))
        self.labDependance.place(x=20, y = 460)
        
        self.listeDep = ttk.Combobox(self.frame, values=dependance)
        self.listeDep.current(0)
        self.listeDep.place(x=160, y = 460)
        
        self.labSuperficieDep =Label(self.frame, text="Superficie :")
        self.labSuperficieDep.config(font=("helvetica", 12, 'bold'))
        self.labSuperficieDep.place(x=500, y = 460)
        
        self.superficieDep =Entry(self.frame, font='helvetica 12', width=4)
        self.superficieDep.place(x=620, y=460)
        
        self.labDescription =Label(self.frame, text="Description :")
        self.labDescription.config(font=("helvetica", 12, 'bold'))
        self.labDescription.place(x=20, y = 500)

        self.description =Entry(self.frame, font='helvetica 12')
        self.description.place(x=150, y= 500)

        self.labPhoto =Label(self.frame, text="Photo :")
        self.labPhoto.config(font=("helvetica", 12, 'bold'))
        self.labPhoto.place(x=500, y = 500)
        
        self.photo =Button(self.frame, text="Parcourir", state="disabled", font='helvetica 12', bg="gray")
        self.photo.place(x=580, y=  500, height=25)

        
        #Prix 
        self.labPrix = Label(self.frame, text="Prix : ",fg="#CA1809")
        self.labPrix.config(font=("helvetica", 15, 'bold'))
        self.labPrix.place(x=20, y = 560)
        
        self.labPrixMin =Label(self.frame, text="Prix Min :")
        self.labPrixMin.config(font=("helvetica", 12, 'bold'))
        self.labPrixMin.place(x=20, y = 610)
        
        self.prixMin =Entry(self.frame, font='helvetica 12')
        self.prixMin.place(x=120, y=  610)
        
        self.labPrixMax =Label(self.frame, text="Prix Max :")
        self.labPrixMax.config(font=("helvetica", 12, 'bold'))
        self.labPrixMax.place(x=500, y = 610)
        
        self.prixMax =Entry(self.frame, font='helvetica 12')
        self.prixMax.place(x=600, y=  610)
        
        self.labPrixVente =Label(self.frame, text="Prix de Vente :")
        self.labPrixVente.config(font=("helvetica", 12, 'bold'))
        self.labPrixVente.place(x=20, y = 650)
        
        self.prixVente =Entry(self.frame, font='helvetica 12')
        self.prixVente.place(x=160, y= 650)

        
        #Boutons valider et retour
        self.bouttonValider = Button(self.frame, text="Valider", font='helvetica 15 bold',bg="#CA1809",fg="white", command=self.valider)
        self.bouttonValider.place(x=330, y=720, width=150, height=25)

        self.boutonRetour=Button(self.frame, text="Retour", font=('helvetica',15,'bold')
                             , bg='#CA1809', fg='white', command=self.retour)
        self.boutonRetour.place(x=20, y=720, width=150, height=25)




#Fonction pour retourner en arrière
    def retour(self):

        self.fenetre.destroy()

        log=annonce.Annonce()


        
#Fonction pour valider le bien
    def valider(self):
        
        #Connexion à la base
        connexionBdd = mysql.connector.connect(
                host="localhost",
                user="root",
                passwd="",
                database="bdd-uf"
            )

        curseur = connexionBdd.cursor()

        #Avoir la date du jour
        self.date = datetime.datetime.today().strftime('%Y-%m-%d')

        #Id status
        self.status=1

        #Mettre les donnees dans un tuple (données)

        donneeAdresse =(
            self.adresse.get(),
            self.complementAdresse.get(),
            self.ville.get(),
            self.codePostal.get()
        )

        if var.get()==0 or self.nbPiece.get()=="" or self.nbChambre.get()=="" or self.superficie.get()=="" or self.adresse.get()=="" or self.ville.get()=="" or self.codePostal.get()=="" or self.superficieDep.get()=="" or self.description.get()=="" or self.prixMin.get()=="" or self.prixMax.get()=="" or self.prixVente.get()=="" :
             messagebox.showinfo("Attention!","Veuillez renseigner tous les champs.")
        else :
            try:
                testEtage = int(self.etage.get()) #On vérifie que c'est un nombre
                testPiece = int(self.etage.get())
                testChambre = int(self.etage.get())
                testSuperficie = int(self.etage.get())
                testSuperficieDep = int(self.etage.get())
                testVendeur = int(self.etage.get())
                testPrixMin = int(self.etage.get())
                testPrixMax = int(self.etage.get())
                testPrixVente = int(self.etage.get())
                


            except:
                messagebox.showinfo("Message","Il y a des erreurs de saisies.")
                erreur=1
                
            if erreur>1 :
                messagebox.showinfo("Message","Veuillez rentrer des données correctes.")
            else :  
            
                sql="INSERT INTO adresse (adresse, complement_adresse,code_postal,ville) VALUE (%s,%s,%s,%s)"
                curseur.execute(sql,donneeAdresse)
                connexionBdd.commit()

                curseur.execute("SELECT id_adresse FROM adresse ORDER BY id_adresse DESC")
                idAdresse=curseur.fetchall()
                idAdresse=idAdresse[0][0]

                self.enLigne=1
                
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
                self.status,
                idAdresse,
                self.enLigne,
                self.vendeur.get()
                )
                curseur= connexionBdd.cursor(buffered=True)
                sql="INSERT INTO biens (id_type_bien, etage,nb_piece, nb_chambre,superficie,id_agence, descriptif, prix_min, prix_max, prix_vente, date_ajout, id_statut, id_adresse,en_ligne, id_membre) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
                curseur.execute(sql,donneeBien)
                connexionBdd.commit()


                curseur.execute("SELECT id_bien FROM biens ORDER BY id_bien DESC")
                idBien=curseur.fetchall()
                idBien=idBien[0][0]

                donneeDep= (
                self.listeDep.get(),
                self.superficieDep.get(),
                idBien
                )


                sql="INSERT INTO dependance(nom_dependance,superficie,id_bien) VALUE (%s,%s,%s)"       
                curseur.execute(sql,donneeDep)
                connexionBdd.commit()

                messagebox.showinfo("Message","Votre bien a été ajouté !")

                self.fenetre.destroy()

                log=annonce.Annonce()


       


            
