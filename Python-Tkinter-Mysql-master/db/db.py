import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="",
    database="bdd-uf"
)

cursor = con.cursor()

#Fonction pour accéder à la base
def user_login(tup):
    try:
        cursor.execute("SELECT * FROM `agent_immobilier` WHERE `mail`=%s AND `prenom`=%s",tup)
        return (cursor.fetchone())
    except:
        return False

def test(tup):
    try:
        cursor.execute("SELECT biens.id_bien FROM `agent_immobilier` inner join agence on agent_immobilier.id_agence=agence.id_agence Inner join biens on biens.id_agence=agence.id_agence Where prenom=Oliver",tup)

        return (cursor.fetchone())
    except:
        return False
