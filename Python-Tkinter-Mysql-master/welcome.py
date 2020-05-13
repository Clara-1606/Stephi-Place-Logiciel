from tkinter import *
import login


class WelcomeWindow:

    #Créer un constructeur
    def __init__(self):
        # Creer la fenetre Tkinter
        self.win = Tk()

        #Reinilisaliser la fenetre et le fond d'ecran
        self.canvas = Canvas(self.win, width=600, height=400, bg='white')
        self.canvas.pack(expand=YES, fill=BOTH)

        #Montrer la fenetre au centre de l'écran
        width = self.win.winfo_screenwidth()
        height = self.win.winfo_screenheight()
        x = int(width / 2 - 600 / 2)
        y = int(height / 2 - 400 / 2)
        str1 = "600x400+"+ str(x) + "+" + str(y)
        self.win.geometry(str1)

        #Désactiver le changement de taille de la fenetre
        self.win.resizable(width=False, height=False)

        #changer le titre de la fenetre
        self.win.title("WELCOME | PROJECT TITLE | ADMINISTRATOR")

    def add_frame(self):
        #Creer l'intérieur du cadre
        self.frame = Frame(self.win, height=300, width=450)
        self.frame.place(x=80, y=50)

        x, y = 70, 20

        # Place la photo 
        self.img = PhotoImage(file='images/icon.png')
        self.label = Label(self.frame, image=self.img)
        self.label.place(x=x+80, y=y+0)

        self.labeltitle = Label(self.frame, text="Welcome to Expense Tracker")
        self.labeltitle.config(font=("Courier", 20, 'bold'))
        self.labeltitle.place(x=10, y=y+150)

        self.button = Button(self.frame, text="Continue", font=('helvetica', 20, 'underline italic')
                             , bg='dark green', fg='white', command=self.login)
        self.button.place(x=x+80, y=y+200)

        self.win.mainloop()

    #Ouvre une nouvelle fenetre
    def login(self):
        # Detruit l'autre fenetre
        self.win.destroy()

        #Ouvre la nouvelle fenetre
        log = login.LoginWindow()
        log.add_frame()


if __name__ == "__main__":
    x = WelcomeWindow()
    x.add_frame()
