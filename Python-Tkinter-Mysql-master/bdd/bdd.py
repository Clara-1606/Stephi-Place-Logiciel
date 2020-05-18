import mysql.connector #Importe MySQL pour connecter à la base de données


#Connexion à la base de données
connexionBdd = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="",
    database="bdd-uf"
)

curseur = connexionBdd.cursor()

#Fonction pour accéder à la base pour la connexion
def connexionUtilisateur(tup):
    try:
        curseur.execute("SELECT * FROM `agent_immobilier` WHERE `mail`=%s AND `prenom`=%s",tup)
        return (curseur.fetchone())
    except:
        return False

