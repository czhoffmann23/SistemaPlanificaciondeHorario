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
    data=CallServiceGetSomething("profesor","rut",rut)
    error=[]
    datos=[]
    if data==error:
       print("no llego")

    else:
        datos.append(data[0][0])
        datos.append(data[0][1])
        datos.append(data[0][2])
        datos.append(data[0][3])
        datos.append(data[0][4])
        hor=[]
        hor_fin=""
        hor=data[0][5].split(',')
        for i in hor:
            if i!='0':
                hor_fin=hor_fin+i+' , '
        hor_fin=hor_fin[:-1]
        datos.append(hor_fin)
        return datos
def ProfesorDetalleUno(rut):
    data=CallServiceGetSomething("profesor","rut",rut)
    error=[]
    datos=[]
    if data==error:
       print("no llego")

    else:
        cursos=CallServiceGetAtributo("asignatura","asg_nombre")
        datos.append(data[0][0])
        datos.append(data[0][1])
        datos.append(data[0][2])
        datos.append(data[0][3])
        datos.append(data[0][4])
        datos.append(cursos)
        hor=[]
        hor=data[0][5].split(',')
        for i in hor:
            datos.append(i)
        return datos
        
def ProfesorCreate(obj):
    rut = obj[2]
    curso= obj[3]
    error=[]
    data_rut=CallServiceGetSomething("profesor","rut",rut)
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
    rut=obj[2]
    curso= obj[3]
    error_curso=[]
    data_curso=CallServiceGetCurso("profesor",curso)
    if data_curso==error_curso:
        data_obj=CallServiceUpdateProfesor("profesor",obj)
        if data_obj == None:
            return 1
        else:
            return 2
    else: #existe curso
        if data_curso[0][2] == rut:
            data_obj=CallServiceUpdateProfesor("profesor",obj)
            if data_obj == None:
                return 1
            else:
                return 2
        else:
            return 4
   
   
def ProfesorDelete(id):
    data_nrc=CallServiceDeleteProf("profesor",id)
    if data_nrc == None:
        return 1
    else:
        return 2
   