class A(object):
    parameter = 1
    def calculer(self,value):
        return value**2
 
class B(object):
    def __init__(self):
        self._A = A()
    def utiliser(sel,value):
        return self._A.calculer(value)
    def montrer(self):
        print (self._A.parameter)
        print (A.parameter)
        print("con")
