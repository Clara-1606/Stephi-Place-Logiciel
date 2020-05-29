from tkinter import * #Importe Tkinter pour l'interface graphique
import mysql.connector #Importe MySQL 
import connexion #Importe le fichier connexion.py
import modifier_bien #Importe le fichier modifier.py
import creer_bien #Importe le fichier creer.py
import accueil #Importe le fichier accueil.py
 

class Annonce:

    staticBien=""
    
    def __init__(self) :
        self.fenetre = Tk()
        #Reinilisaliser la fenetre et le fond d'ecran
        self.canvas = Canvas(self.fenetre, width=650, height=750, bg='white')
        self.canvas.pack(expand=YES, fill=BOTH)

        #Désactiver le changement de taille de la fenetre
        self.fenetre.resizable(width=False, height=False)

        ##changer le titre de la fenetre
        self.fenetre.title("GESTION DES ANNONCES | STEPHI PLACE")

        
        #Connexion à la base
        connexionBdd = mysql.connector.connect(
            host="localhost",
            user="root",
            passwd="",
            database="bdd-uf"
        )

        curseur = connexionBdd.cursor()


        sql="SELECT biens.id_bien, type_bien.libelle, nb_piece, superficie, descriptif, adresse, ville, code_postal, en_ligne FROM `agent_immobilier` inner join agence on agent_immobilier.id_agence=agence.id_agence Inner join biens on biens.id_agence=agence.id_agence inner join type_bien on type_bien.id_type_bien = biens.id_type_bien INNER JOIN adresse ON adresse.id_adresse=biens.id_adresse Where mail=%s"
        mail=(connexion.Connexion.staticmail,)
        curseur.execute(sql, mail)

        
        
        global biens #On met en global pour pouvoir la récupérer plus tard
        biens = curseur.fetchall()
        global z
        z=0
        x = 0

        self.frame = Frame(self.fenetre, height=710, width=610)
        self.frame.place(x=20, y=20)

        self.titre = Label(self.frame, text="Vos annonces", font=('helvetica', 20, 'underline bold'), fg="#CA1809" )
        self.titre.place(x=200, y = 20)


        #On fait une boucle pour afficher les biens de l'agent
        for nom in biens:
            self.labIdBien = Label(self.frame, text="Id bien : ", anchor="e")
            self.labIdBien.place(x=20, y=100+z, height=25)
            
            self.idBien = Label(self.frame, text=biens[x][0], anchor="w")
            self.idBien.place(x=80, y=100+z,  height=25)

            self.labType = Label(self.frame, text="Type : ", anchor="e")
            self.labType.place(x=20, y=130+z,  height=25)

            self.type = Label(self.frame, text=biens[x][1], anchor="w")
            self.type.place(x=60, y=130+z, height=25)

            self.piece = Label(self.frame, text=biens[x][2], anchor="w")
            self.piece.place(x=150, y=130+z, height=25)
            
            self.labPiece = Label(self.frame, text="Pièces")
            self.labPiece.place(x= 160, y=130+z, height=25)

            self.superficie = Label(self.frame, text=biens[x][3], anchor="e")
            self.superficie.place(x=200, y=130+z, height=25)
            
            self.m2=Label(self.frame, text="m2")
            self.m2.place(x=240, y=130+z, height=25)

            self.descriptif = Label(self.frame, text="Description : ")
            self.descriptif.place(x= 20, y=190+z, height=25)

            self.superfice = Label(self.frame, text=biens[x][4], anchor="w")
            self.superfice.place(x=100, y=190+z, height=25)

            self.adresse = Label(self.frame, text="Adresse : ")
            self.adresse.place(x= 20, y=160+z, height=25)

            self.adresseComplete = Label(self.frame, text=biens[x][5:8], anchor="w")
            self.adresseComplete.place(x=90, y=160+z, height=25)

            if biens[x][8]==1 :
                enLigne="Oui"
            else :
                enLigne = "Non"

            self.labEnLigne = Label(self.frame, text="En ligne : ")
            self.labEnLigne.place(x= 20, y=220+z, height=25)

            self.enLigne = Label(self.frame, text=enLigne, anchor="w")
            self.enLigne.place(x=80, y=220+z, height=25)

            #Bouton pour supprimer un bien
            self.supprime = Button(self.frame, text="X", font=('helvetica',12,'bold')
                             , bg='#CA1809', fg='white', command=lambda x=x: self.supprimer(x))
            self.supprime.place(x=580, y=160+z, width=25, height=25)

            #Boutons pour modifier un bien
            self.modifie = Button(self.frame, text="Modifier", font=('helvetica',12,'bold')
                             , bg='gray', fg='white', command=lambda x=x: self.modifier(x))
            self.modifie.place(x=400, y=160+z, width=70, height=25)

            if enLigne=="Oui" :

                #Bouton pour cacher un bien
                self.cache = Button (self.frame, text="Cacher", font=('helvetica',12,'bold')
                                 , bg='gray', fg='white', command=lambda x=x: self.cacher(x))
                self.cache.place(x=490, y=160+z, width=70, height=25)

            else :
                #Bouton pour rendre visible un bien
                self.visible = Button (self.frame, text="Visible", font=('helvetica',12,'bold')
                                 , bg='gray', fg='white', command=lambda x=x: self.rendreVisible(x))
                self.visible.place(x=490, y=160+z, width=70, height=25)
            
            z=z+170
            x=x+1

        #Boutons pour créer un bien et pour retourner en arrière   
        self.cree = Button(self.frame, text="Créer une annonce", font=('helvetica',12,'bold')
                             , bg='green', fg='white', command=self.creer)
        self.cree.place(x=80, y=100+z, width=150, height=25)

        self.boutonRetour=Button(self.fenetre, text="Retour à l'accueil", font=('helvetica',12,'bold')
                             , bg='#CA1809', fg='white', command=self.retour)
        self.boutonRetour.place(x=240, y=680, width=150, height=25)


#Fonction pour retourner à la page précédente
    def retour(self):

        self.fenetre.destroy()

        log=accueil.Accueil()

    
#Fonction pour supprimer un bien     
    def supprimer(self,x):
        
        connexionBdd = mysql.connector.connect(
            host="localhost",
            user="root",
            passwd="",
            database="bdd-uf"
        )

        curseur = connexionBdd.cursor()

        #Supprimer le bien des favoris
        sql = "DELETE FROM favoris WHERE id_bien = %s"
        bien = (biens[x][0], )
        curseur.execute(sql, bien)
        connexionBdd.commit()

        #Supprimer le bien des dépendances
        sql = "DELETE FROM dependance WHERE id_bien = %s"
        bien = (biens[x][0], )
        curseur.execute(sql, bien)

        curseur = connexionBdd.cursor()
        connexionBdd.commit()

        #Supprimer les images du bien
        sql = "DELETE FROM image WHERE id_bien = %s"
        bien = (biens[x][0], )
        curseur.execute(sql, bien)

        connexionBdd.commit()
            
        curseur = connexionBdd.cursor()
        
        #Supprimer le bien
        sql = "DELETE FROM biens WHERE id_bien = %s"
        bien = (biens[x][0],)

        curseur.execute(sql, bien)

        connexionBdd.commit()
       

        self.fenetre.destroy()

        #Ouvre la nouvelle fenetre pour actualisé la page
        log = Annonce()

        
#Fonction pour cacher une annonce
    def cacher(self,x) :

        connexionBdd = mysql.connector.connect(
            host="localhost",
            user="root",
            passwd="",
            database="bdd-uf"
        )

        curseur = connexionBdd.cursor()

        sql = "UPDATE biens SET en_ligne=0 WHERE id_bien=%s"
        bien = (biens[x][0], )

        curseur.execute(sql, bien)

        connexionBdd.commit()
       

        self.fenetre.destroy()

        #Ouvre la nouvelle fenetre pour actualisé la page
        log = Annonce()
        


    #Fonction pour cacher une annonce
    def rendreVisible(self,x) :

        connexionBdd = mysql.connector.connect(
            host="localhost",
            user="root",
            passwd="",
            database="bdd-uf"
        )

        curseur = connexionBdd.cursor()

        sql = "UPDATE biens SET en_ligne=1 WHERE id_bien=%s"
        bien = (biens[x][0], )

        curseur.execute(sql, bien)

        connexionBdd.commit()
       

        self.fenetre.destroy()

        #Ouvre la nouvelle fenetre pour actualisé la page
        log = Annonce()
        


#Fonction pour accéder à la page modifier
    def modifier(self,x):

        Annonce.staticBien=biens[x][0]

        self.fenetre.destroy()

        #Ouvre la nouvelle fenetre
        log = modifier_bien.ModifierBien()


#Fonction pour accéder à la page pour créer un bien
    def creer(self):

        self.fenetre.destroy()

        #Ouvre la nouvelle fenetre
        log = creer_bien.CreerBien()
           

            
    

        
       

   
        



            
    

            
            

        
            
            
            


        
