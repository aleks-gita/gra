from flask import Flask
from flask import render_template
from random import randint
from random import shuffle
from flask import request, redirect
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import MetaData, create_engine
from gracz import Gracz
from partia import Partia


app = Flask(__name__)

'''sqldb = SQLAlchemy(app)
app.config['SQLALCHEMY_DATABASE_URI'] = "mysql://19_mazur:wierzb19@127.0.0.1:3306/19_mazur"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True

db = SQLAlchemy(app)

'''
#polaczenie z baza
engine= create_engine('sqlite:///C:\\Users\\win\\Documents\\my_flask\\Gra.db')

META_DATA = MetaData(bind=engine)

c=engine.connect()
META_DATA.reflect()

#select kart z tabel
hero=META_DATA.tables['Hero_1']
reka=META_DATA.tables['Reka']

reka_select = reka.select()
hero_select = hero.select()

# result dla wszystkich kart
result = engine.execute(hero_select)
#result dla poczatkowej reki
a=engine.execute(reka_select)
result2= a.fetchall()



class Gracz:
    def __init__(self, imie='Nieznane'):
      self.nazwa = imie
      self.talia = [i[0] for i in result2]
      self.reka = []
      self.odrzucone = []
      self.potasuj()
      self.wyloz_karty()
      self.koniec_tury()
      #self.koniec_talii()
      self.wyloz_karty()
      self.koniec_tury()
      self.koniec_talii()
    def potasuj(self):
      shuffle(self.talia)
    def wyloz_karty(self):
      self.reka = self.talia[:5]
      del self.talia[:5]
    def dobierz_karte(self):
      self.reka = self.talia[1]
    def kup_karte(self):
        pass
    def odrzuc_karte(self):
      self.odrzucone.append(self.talia[1])
      del self.talia[1]
    def koniec_tury(self):
      self.odrzucone.append(self.reka[:])
      del self.reka[:] 
    def koniec_talii(self):
      self.talia.append(self.odrzucone[:])
      del self.odrzucone[:]
      shuffle(self.talia)
    
    
class Partia:
    def __init__(self, imiona =['Ala', 'Bob']):
      self.sklep_talia=[randint(0,10) for i in range(3)]
      self.sklep_wystawione=[randint(0,10) for i in range(3)]
      self.gracze= [Gracz(imię) for imię in imiona if imię]
     

partia = None
ID_GRACZA = 0


@app.route('/', methods=['GET', 'POST'])
def index():
   return render_template('start.html')
    
@app.route('/plansza', methods=['GET', 'POST'])
def plansza():
    global partia, ID_GRACZA
    if request.method == 'POST':
        ID_GRACZA += 1
        ID_GRACZA %= len(partia.gracze) 
        Gracz.wyloz_karty()
      
    return render_template('plansza.html', partia=partia, aktywny_gracz = ID_GRACZA )
    
@app.route('/create', methods=['GET', 'POST'])
def create():
    global partia
    if request.method == 'POST':
        partia = Partia([request.form['gracz1'], request.form['gracz2'], request.form['gracz3'], request.form['gracz4']])
        ID_GRACZA = 0
        return redirect("/plansza")
    
    return render_template("create.html")
@app.route('/cards', methods=['GET', 'POST'])
def cards():  
    return render_template("cards.html", result=engine.execute(hero_select), result2=engine.execute(reka_select) )
   
    
  

if __name__ == '__main__':
    app.run()