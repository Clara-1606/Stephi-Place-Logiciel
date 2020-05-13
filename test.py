import mysql.connector #Pour avoir la base de données
from tkinter import * #Pour l'interface graphique



if __name__=="__main__":

#FENETRE
    fenetre = Tk()  # Créer une fenêtre
    fenetre.configure(background="#000000") #Mettre une couleur de fond
    fenetre.title("StephiPlace") #Titre
    fenetre.geometry("700x700") #Taille (en pixel)
    var_texte = StringVar()
    mail = Entry(fenetre, textvariable=var_texte, width=30)
    mail.pack()
    mail = Entry(fenetre, textvariable=var_texte, width=30)
    mail.pack()

    #DEMARRER
    fenetre.mainloop()

    
    mydb = mysql.connector.connect(
        host="localhost",
          user="root",
          passwd="",
          database="bdd-uf"
    )

    mycursor = mydb.cursor()

    mycursor.execute("SELECT * FROM membre")

    myresult = mycursor.fetchall()


  
        
