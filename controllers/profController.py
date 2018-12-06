from services import *

def TodoslosCursos():
    data=CallServiceGetAtributo("asignatura","asg_nombre")
    error=[]
    if data==error:
        print("no llego")
    else:
        return data
def ProfesorAll():
    data=CallServiceGet("profesor")
    error=[]
    if data==error:
       print("no llego")

    else:
        return data

def ProfesorDetalle(rut):
    data=CallServiceGetRut("profesor",rut)
    error=[]
    if data==error:
       print("no llego")

    else:
        return data

def ProfesorCreate(obj):
    rut = obj[2]
    curso= obj[3]
    error=[]
    data_rut=CallServiceGetRut("profesor",rut)
    if data_rut==error: #no existe rut
        error_curso=[]
        data_curso=CallServiceGetCurso("profesor",curso)
        if data_curso==error_curso:
            data_obj=CallServiceSaveProfesor("profesor",obj)
            if data_obj == None:
                return 1
            else:
                return 2
        else: #existe curso
            return 4
        
    else: #existe rut
        return 3
def ProfesorUpdate(obj):
    error=[]
    data_obj=CallServiceUpdateProfesor("profesor",obj)
    if data_obj == None:
        return 2
    else:
        return 1
    
def ProfesorDelete(id):
    data_nrc=CallServiceDeleteProf("profesor",id)
    if data_nrc == None:
        return 2
    else:
        return 1
   