import mysql.connector
import pandas as pd
import matplotlib.pyplot as plt

mydb = mysql.connector.connect(
    user='root',
    password='FCRb34%%2005',
    host='127.0.0.1',
    database='bib'
)

mycursor = mydb.cursor()
mycursor.execute("""
    SELECT MONTH(Ausleihedatum) AS Monat, COUNT(*) AS Ausleihen,
           SUM(CASE WHEN Status = 0 THEN 1 ELSE 0 END) AS NochOffen,
           SUM(CASE WHEN Status = 1 THEN 1 ELSE 0 END) AS Zurückgegeben
    FROM ausleihe
    WHERE YEAR(Ausleihedatum) = 2026
    GROUP BY MONTH(Ausleihedatum)
    ORDER BY Monat
""")
df = pd.DataFrame(mycursor.fetchall(), columns=['Monat', 'Ausleihen', 'NochOffen', 'Zurückgegeben'])
mycursor.close()
mydb.close()

df[['Ausleihen', 'NochOffen', 'Zurückgegeben']] = df[['Ausleihen', 'NochOffen', 'Zurückgegeben']].astype(int)

monate = {1:'Jan',2:'Feb',3:'Mär',4:'Apr',5:'Mai',6:'Jun',
          7:'Jul',8:'Aug',9:'Sep',10:'Okt',11:'Nov',12:'Dez'}
df['Monat'] = df['Monat'].map(monate)

df.plot(x='Monat', y=['Zurückgegeben', 'NochOffen'],
        kind='bar', stacked=True, color=['#2ecc71', '#e74c3c'],
        title='Ausleihen pro Monat 2026')

plt.tight_layout()
plt.show()