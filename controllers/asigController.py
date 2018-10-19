import sys
sys.path.append('./services/')
from services import *

def AsignaturasAll():
    data=CallServiceGet("asignatura")
    error=[]
    if data==error:
       print("no llego")

    else:
        return data
