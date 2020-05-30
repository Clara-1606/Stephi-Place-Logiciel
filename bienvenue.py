from tkinter import * #Importe Tkinter pour l'interface graphique
import connexion #Importe le fichier connexion.py


class Bienvenue:

    #Créer un constructeur
    def __init__(self):
        # Creer la fenetre Tkinter
        self.fenetre = Tk()

        #Reinilisaliser la fenetre et le fond d'ecran
        self.canvas = Canvas(self.fenetre, width=730, height=400, bg='white')
        self.canvas.pack(expand=YES, fill=BOTH)

        #Montrer la fenetre au centre de l'écran
        longueur = self.fenetre.winfo_screenwidth()
        hauteur = self.fenetre.winfo_screenheight()
        x = int(longueur / 2 - 730 / 2)
        y = int(hauteur / 2 - 400 / 2)
        str1 = "730x400+"+ str(x) + "+" + str(y)
        self.fenetre.geometry(str1)

        #Désactiver le changement de taille de la fenetre
        self.fenetre.resizable(width=False, height=False)

        #Changer le titre de la fenetre
        self.fenetre.title("BIENVENUE | STEPHI PLACE")

    def frame(self):
        #Creer l'intérieur du cadre
        self.frame = Frame(self.fenetre, height=300, width=570)
        self.frame.place(x=80, y=50)

        x, y = 70, 20

        # Place la photo 
        self.img = PhotoImage(file='images/logo.png')
        self.label = Label(self.frame, image=self.img)
        self.label.place(x=x+120, y=10)
        
        #Titre
        self.titre = Label(self.frame, text="Bienvenue sur StephiPlace Software ")
        self.titre.config(font=("helvetica", 20, 'bold'))
        self.titre.place(x=40, y=y+150)
        
        #Bouton pour accéder à une nouvelle fenêtre
        self.bouttonContinue = Button(self.frame, text="Continue", font=('helvetica', 20, 'underline italic')
                             , bg='#CA1809', fg='white', command=self.connexion)
        self.bouttonContinue.place(x=x+150, y=y+200)

        self.fenetre.mainloop()

    #Ouvre une nouvelle fenetre
    def connexion(self):
        # Detruit l'autre fenetre
        self.fenetre.destroy()

        #Ouvre la nouvelle fenetre
        log = connexion.Connexion()
        log.frame()


#Demarre le programme
if __name__ == "__main__":
    x = Bienvenue() #Nouvelle objet Bienvenue
    x.frame()
