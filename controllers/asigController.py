from services import *

def AsignaturasAll():
    data=CallServiceGet("asignatura")
    error=[]
    if data==error:
       print("no llego")

    else:
        return data

def AsignaturasDetalle(nrc):
    data=CallServiceGetSomething("asignatura","asg_nrc",nrc)
    error=[]
    if data==error:
       print("no llego")

    else:
        return data

def AsignaturaCreate(obj):
    nrc = obj[0]
    error=[]
    data_nrc=CallServiceGetSomething('asignatura','asg_nrc',nrc)
    if data_nrc==error: #no existe nrc
        data_obj=CallServiceSaveAsignatura('asignatura',obj)
        if data_obj == None:
                return 1
        else:
                return 2
    else: #existe nrc
        return 3
def AsignaturaDelete(obj):
    data_obj=CallServiceDeleteAsignatura('asignatura',obj)
    if data_obj == None:
        return 1
    else:
        return 2

def AsignaturaUpdate(obj):
    nrc = obj[0]
    error=[]
    data_nrc=CallServiceGetSomething('asignatura','asg_nrc',nrc)
    obj.append(data_nrc[0][4])
    data_obj=CallServiceUpdateAsignatura('asignatura',obj)
    if data_obj == None:
        return 1
    else:
        return 2