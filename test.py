import mysql.connector #Pour avoir la base de données
from tkinter import * #Pour l'interface graphique
import tkinter as tk
from tkinter import ttk



if __name__=="__main__":

    
    mydb = mysql.connector.connect(
        host="localhost",
          user="root",
          passwd="",
          database="bdd-uf"
    )

    mycursor = mydb.cursor()

    mycursor.execute("SELECT * FROM dependance")

    myresult = mycursor.fetchall()
    print(myresult)



 

    root = tk.Tk() 
    root.geometry('300x200')

     

    def action(event):
        
        # Obtenir l'élément sélectionné
        select = listeCombo.get()
        print("Vous avez sélectionné : '", select,"'")

     

    labelChoix = tk.Label(root, text = "Veuillez faire un choix !")
    labelChoix.pack()

     

    # 2) - créer la liste Python contenant les éléments de la liste Combobox
    listeProduits=["Laptop", "Imprimante","Tablette","SmartPhone"]

     

    # 3) - Création de la Combobox via la méthode ttk.Combobox()
    listeCombo = ttk.Combobox(root, values=listeProduits)
     
    # 4) - Choisir l'élément qui s'affiche par défaut
    listeCombo.current(0)

     

    listeCombo.pack()
    listeCombo.bind("<<ComboboxSelected>>", action)

     

    root.mainloop()

    
    mydb.close()

  
        
