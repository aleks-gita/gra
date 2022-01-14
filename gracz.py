from random import randint

class Gracz:
    def __init__(self, imie='Nieznane'):
      self.nazwa = imie
      self.talia = [randint(0,10) for i in range(10)]
      self.reka = []
      self.odrzucone = [randint(0,10) for i in range(3)]
    def wyloz_karty(self):
      self.reka= self.talia[:5]
    def kup_karte(self):
        pass
    def odrzuc_karte(self):
        pass
    