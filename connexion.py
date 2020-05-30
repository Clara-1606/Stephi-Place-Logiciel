from tkinter import * #Importe Tkinter pour l'interface graphique
from tkinter import messagebox #Importe les messages "popup"
import bdd.bdd #On importe le fichier bdd qui se trouve dans le dossier bdd
import accueil #Importe le fichier accueil.py
from hashlib import md5


class Connexion:
    staticmail="" #Variable static de la classe
    

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
        self.fenetre.title("CONNEXION | STEPHI PLACE")
        

    def frame(self):
        self.frame = Frame(self.fenetre, height=400, width=450)
        self.frame.place(x=80, y=50)

        x, y = 70, 20

        self.image = PhotoImage(file='images/connexion.png')
        self.label = Label(self.frame, image=self.image)
        self.label.place(x = x + 90, y = y + 0)

        #Creer le formulaire de connexion
        self.label = Label(self.frame, text="Connexion")
        self.label.config(font=("helvetica", 20, 'bold'))
        self.label.place(x=150, y = y + 150)

        self.labEmail = Label(self.frame, text="Email :")
        self.labEmail.config(font=("helvetica", 12, 'bold'))
        self.labEmail.place(x=50, y= y + 230)

        self.email = Entry(self.frame, font='helvetica 12')
        self.email.place(x=200, y= y + 230)

        self.labMdp = Label(self.frame, text="Mot de passe :")
        self.labMdp.config(font=("helvetica", 12, 'bold'))
        self.labMdp.place(x=50, y=y+260)

        self.mdp = Entry(self.frame,show='*', font='helvetica 12')
        self.mdp.place(x=200, y=y+260)

        self.bouttonConnexion = Button(self.frame, text="Se connecter", font='helvetica 15 bold',bg="#CA1809",fg="white", command=self.connexion)
        self.bouttonConnexion.place(x=140, y=y+310)

        self.fenetre.mainloop()
    
    def connexion(self):

        #On hash le mot de passe pour le vérifié après dans la base
        mdp = self.mdp.get()
        mdp = mdp.encode()
        mdpHash = md5(mdp).hexdigest()


        
        #Mettre les donnees dans un tuple 
        Connexion.staticmail=self.email.get()
        donnee = (
            Connexion.staticmail,
            mdpHash
        )
        #Validations si les champs sont bien remplis
        if self.email.get() == "":
            messagebox.showinfo("Attention!","Veuillez entrer votre email d'abord.")
        elif self.mdp.get() == "":
            messagebox.showinfo("Attention!","Veuillez entrer votre mot de passe.")
        else:
            res = bdd.bdd.connexionUtilisateur(donnee)
            if res:
                messagebox.showinfo("Message", "Connexion réussie !")
                self.fenetre.destroy()
                x = accueil.Accueil()
            else:
                messagebox.showinfo("Attention !", "Erreur dans votre email/mot de passe.")

        

