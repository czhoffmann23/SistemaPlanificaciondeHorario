from services import *

def AsignaturasAll():
    data=CallServiceGet("asignatura")
    error=[]
    if data==error:
       print("no llego")

    else:
        return data

def AsignaturaCreate(obj):
    nrc = obj[0]
    #servicio para saber si existe nrc
        #retornar si existe
        #si no llamar servicio para insertar