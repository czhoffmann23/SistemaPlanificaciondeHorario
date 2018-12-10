from services import *
from inp import *

def HorariosAll():
    data=CallServiceGet("horarios")
    error=[]
    if data==error:
       print("no llego")

    else:
        return data

def HorariosDetalle(id):
    data=CallServiceGetSomething("horarios","id",id)
    lunes=data[0][2].split(",")
    martes=data[0][3].split(",")
    miercoles=data[0][4].split(",")
    jueves=data[0][5].split(",")
    viernes=data[0][6].split(",")
    lunes.append(data[0][0])
    martes.append(data[0][0])
    miercoles.append(data[0][0])
    jueves.append(data[0][0])
    viernes.append(data[0][0])
    datos=[]
    datos.append(lunes)
    datos.append(martes)
    datos.append(miercoles)
    datos.append(jueves)
    datos.append(viernes)

    error=[]
    if data==error:
       print("no llego")

    else:
        return datos

def HorariosCreate(obj):
    carrera=obj[1]
    semestre=obj[0]
    error=[]
    horario=[]
    conflicto=[]
    horario_lista=[]
    horario,conflicto=GenerarHorario(semestre,carrera)
   

    if horario!=error: #se hizo horario
        lunes=""
        martes=""
        miercoles=""
        jueves=""
        viernes=""
        for i in horario[0]:
            lunes+= i +","
        for i in horario[1]:
            martes+= i +","
        for i in horario[2]:
            miercoles+= i +","
        for i in horario[3]:
            jueves+= i +","
        for i in horario[4]:
            viernes+= i +","
        if conflicto==error:
            horario_lista.append(obj[0])
            horario_lista.append(lunes)
            horario_lista.append(martes)
            horario_lista.append(miercoles)
            horario_lista.append(jueves)
            horario_lista.append(viernes)
            horario_lista.append(obj[2])
            data_obj=CallServiceSaveHorario('horarios',horario_lista)
            if data_obj == None:
                    return 1
            else:
                    return 2
            
        else:
            return conflicto
            #redireccionar para ver conflictos
    else: #error
        return 3
