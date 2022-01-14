from random import randint
from gracz import Gracz

class Partia:
    def __init__(self, imiona =['Ala', 'Bob']):
      self.sklep_talia=[randint(0,10) for i in range(3)]
      self.sklep_wystawione=[randint(0,10) for i in range(3)]
      self.gracze= [Gracz(imię) for imię in imiona if imię]