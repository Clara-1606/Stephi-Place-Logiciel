from tkinter import *
from tkinter import messagebox
import db.db
import dashboard


class LoginWindow:

    def __init__(self):
        self.win = Tk()
        #Reinilisaliser la fenetre et le fond d'ecran
        self.canvas = Canvas(self.win, width=600, height=500, bg='white')
        self.canvas.pack(expand=YES, fill=BOTH)

        #Montrer la fenetre au centre de l'écran
        width = self.win.winfo_screenwidth()
        height = self.win.winfo_screenheight()
        x = int(width / 2 - 600 / 2)
        y = int(height / 2 - 500 / 2)
        str1 = "600x500+" + str(x) + "+" + str(y)
        self.win.geometry(str1)

        #Désactiver le changement de taille de la fenetre
        self.win.resizable(width=False, height=False)

        ##changer le titre de la fenetre
        self.win.title("WELCOME | Login Window | ADMINISTRATOR")

    def add_frame(self):
        self.frame = Frame(self.win, height=400, width=450)
        self.frame.place(x=80, y=50)

        x, y = 70, 20

        self.img = PhotoImage(file='images/login.png')
        self.label = Label(self.frame, image=self.img)
        self.label.place(x = x + 80, y = y + 0)

        #Creer le formulaire de connexion
        self.label = Label(self.frame, text="User Login")
        self.label.config(font=("Courier", 20, 'bold'))
        self.label.place(x=140, y = y + 150)

        self.emlabel = Label(self.frame, text="Enter Email")
        self.emlabel.config(font=("Courier", 12, 'bold'))
        self.emlabel.place(x=50, y= y + 230)

        self.email = Entry(self.frame, font='Courier 12')
        self.email.place(x=200, y= y + 230)

        self.pslabel = Label(self.frame, text="Enter Password")
        self.pslabel.config(font=("Courier", 12, 'bold'))
        self.pslabel.place(x=50, y=y+260)

        self.password = Entry(self.frame,show='*', font='Courier 12')
        self.password.place(x=200, y=y+260)

        self.button = Button(self.frame, text="Login", font='Courier 15 bold',
                             command=self.login)
        self.button.place(x=170, y=y+290)

        self.win.mainloop()

    def login(self):
        #Mettre les donnees dans un tuple (données)
        data = (
            self.email.get(),
            self.password.get()
        )
        #Validations
        if self.email.get() == "":
            messagebox.showinfo("Alert!","Enter Email First")
        elif self.password.get() == "":
            messagebox.showinfo("Alert!", "Enter Password first")
        else:
            res = db.db.user_login(data)
            if res:
                messagebox.showinfo("Message", "Login Successfully")
                self.win.destroy()
                x = dashboard.DashboardWindow()
            else:
                messagebox.showinfo("ALert!", "Wrong username/password")

