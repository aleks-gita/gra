from flask import Flask
from flask import render_template
from random import randint
from random import shuffle
from flask import request, redirect
from jinja2 import Template
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import MetaData, create_engine
from sqlalchemy import text
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
#result dla poczatkowej reki
a=engine.execute(reka_select)
result2= a.fetchall()

hero_select = hero.select()
# result dla wszystkich kart
result = engine.execute(hero_select)

id_selct= text("SELECT id FROM Reka")
id_sel=engine.execute(id_selct)
result_id=id_sel.fetchall

reka_pieniadze = text("SELECT SUM(Monety) as monety FROM Reka")
#text("SELECT Monety FROM REKA")
#text("SELECT SUM(Monety) as monety FROM Reka")
b=engine.execute(reka_pieniadze)
result_monety = b.fetchall
  
   
    
class Partia:
    def __init__(self, imiona =['Ala', 'Bob']):
      self.sklep_talia=[10,20,30,40,50,60,70,80,90,100]
      self.sklep_wystawione=[]
      self.gracze= [Gracz(imie) for imie in imiona if imie]
      self.sprzedane=[]
      self.wystaw()
      #self.sprzedaj()
    def wystaw(self):
      ilosc = len(self.sklep_wystawione)
      if ilosc != 5:
        self.sklep_wystawione.extend(self.sklep_talia[:(5-ilosc)])
        del self.sklep_talia[:(5-ilosc)]
    def karta(self, sprzedane):
      if len(self.sklep_wystawione)!= 0:
        self.sprzedane = [self.sklep_wystawione[x] for x in sprzedane ]
        robocza_lista = [x for x in self.sklep_wystawione if x not in self.sprzedane]
        self.sklep_wystawione = robocza_lista
        return self.sprzedane
        self.sprzedane=[]
      else:
        print("koniec sklepu")
      return       
    #usuniecie kart i uzupelnienie do 5 wystawionych
    def sprzedaj(self):
      self.sklep_wystawione.pop(0)
      self.wystaw()
      
class Gracz:
    def __init__(self, imie='Nieznane'):
      self.nazwa = imie
      self.talia = [i[0] for i in result2]
      self.reka = []
      self.odrzucone = []
      self.potasuj()
      self.wyloz_karty()
      self.sumuj_monety()
     #self.koniec_tury()  
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
      self.odrzucone.extend(self.talia[1])
      del self.talia[1]
    def koniec_tury(self):
      self.odrzucone.extend(self.reka[:])
      del self.reka[:] 
    def koniec_talii(self):
      self.talia.extend(self.odrzucone[:])
      del self.odrzucone[:]
      shuffle(self.talia)
    #dodanie kupionej karty
    def kup(self,sprzedane):
      if sprzedane != None:
        for x in sprzedane:
            self.odrzucone.append(x)
    def sumuj_monety(self):
    #lista2 = [dziecko for dziecko in lista if dziecko != 'x']
      monety= [result_monety for result_monety in self.reka]
      print(monety)
      
      
    
  
#wyciagniecie metody sprzedawania z Partia  

#karta=sprzedaj.karta()

partia = None
ID_GRACZA = 0
#sprzedaj=Partia()

@app.route('/', methods=['GET', 'POST'])
def index():
   return render_template('start.html')
    
@app.route('/plansza', methods=['GET', 'POST'])
def plansza():
    global partia, ID_GRACZA
    #partia.wystaw() # wystawienie kart do sklepu
    if request.method == 'POST':
        #trzeba uzupelnic o to zeby mozna bylo tylko raz wylozyc karty w turze
        if request.form['action']=="Wyloz karty":
            partia.gracze[ID_GRACZA].wyloz_karty()
        if request.form['action']=="Zakoncz ture":
            partia.gracze[ID_GRACZA].koniec_tury()
            if len(partia.gracze[ID_GRACZA].talia) == 0:
                partia.gracze[ID_GRACZA].koniec_talii()
            #partia.sprzedaj()#usuniecie kart kupionych i uzupelnienie
            partia.wystaw()
            ID_GRACZA += 1
            ID_GRACZA %= len(partia.gracze) 
        #kupowanie karty 
        #if request.form['action']=="Kup karty":
        #    karta=partia.karta()
        #    partia.gracze[ID_GRACZA].kup(karta)
        if request.form['action']=="KUP":
            sprzedane=partia.karta(request.form.getlist('karta', type=int))
            partia.gracze[ID_GRACZA].kup(sprzedane)
        
            
      
    return render_template('plansza.html', partia=partia, aktywny_gracz = ID_GRACZA, result_monety=engine.execute(reka_pieniadze))
    
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