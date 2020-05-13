import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="",
    database="bdd-uf"
)

cursor = con.cursor()


cursor.execute("SELECT biens.id_bien, type_bien.libelle, superficie FROM `agent_immobilier` inner join agence on agent_immobilier.id_agence=agence.id_agence Inner join biens on biens.id_agence=agence.id_agence inner join type_bien on type_bien.id_type_bien = biens.id_type_bien Where prenom='Chad'")

test=cursor.fetchall()
x=0
while x<3 :
    nom=test[0][x]
    print(nom)
    x=x+1

#for nom in cursor.fetchall():
    #print(nom[0])





    
