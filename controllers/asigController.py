from services import *

def AsignaturasAll():
    data=CallServiceGet("asignatura")
    error=[]
    if data==error:
       print("no llego")

    else:
        return data

def AsignaturasDetalle(nrc):
    data=CallServiceGetNRC("asignatura",nrc)
    error=[]
    if data==error:
       print("no llego")

    else:
        return data

def AsignaturaCreate(obj):
    nrc = obj[0]
    error=[]
    data_nrc=CallServiceGetNRC('asignatura',nrc)
    if data_nrc==error: #no existe nrc
        data_obj=CallServiceSaveAsignatura('asignatura',obj)
        if data_obj == None:
                return 1
        else:
                return 2
    else: #existe nrc
        return 3