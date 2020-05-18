from tkinter import * #Importe Tkinter pour l'interface graphique
import accueil #Importe le fichier accueil.py


class Espace:
    def __init__(self):
        self.fenetre = Tk()
        #Reinilisaliser la fenetre et le fond d'ecran
        self.canvas = Canvas(self.fenetre, width=600, height=500, bg='white')
        self.canvas.pack(expand=YES, fill=BOTH)

        #Désactiver le changement de taille de la fenetre
        self.fenetre.resizable(width=False, height=False)

        #Changer le titre de la fenetre
        self.fenetre.title("Mon Espace")

        self.boutonRetour=Button(self.fenetre, text="Retour à l'accueil", font=('helvetica',12,'bold')
                             , bg='#CA1809', fg='white', command=self.retour)
        self.boutonRetour.place(x=220, y=400, width=150, height=25)


#Fonction pour retourner en arrière
    def retour(self):

        self.fenetre.destroy()

        log=accueil.Accueil()
    
