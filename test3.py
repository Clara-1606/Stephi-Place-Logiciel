from tkinter import *
import test4
global fenetre1, fenetre2


def fenetre():
    global fenetre1
    fenetre1 = Tk()
    champ_label = Label(fenetre1, text="Salut !")
    champ_label.pack()
    bouton = Button(fenetre1,text="Acceuil", command=test)
    bouton.pack()
    fenetre1.mainloop()


if __name__ == '__main__':
    fenetre()
