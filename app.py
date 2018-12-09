from bottle import route, run, template,static_file,error,post, request, redirect, url
import sys
sys.path.append('./controllers/')
from asigController import *
import sys
sys.path.append('./controllers/')
from profController import *

@error(404)
def error404(error):
    return '<h1> TE EQUIVOCASTE OE ERROR 404 </h1>'
@route('/')
def index():
    return template('index')


#===========  Visualizar  ===========
@route('/ProfesoresAll')
def profesores():
    resultado=ProfesorAll()
    return template('ProfesorAll',rows=resultado)

@route('/AsignaturaAll')
def asignaturas():
    resultado=AsignaturasAll()
    return template('AsignaturaAll',rows=resultado)
#===========  Detalle     ===========
@route('/Profesor/Detalle/<id>')
def profesorDetalle(id):
    resultado=ProfesorDetalle(id)
    return template('ProfesorDetalle',rows=resultado)

@route('/Asignatura/Detalle/<id>')
def asginaturaDetalle(id):
    resultado=AsignaturasDetalle(id)
    return template('AsignaturaDetalle',rows=resultado)

#===========  Modificar   ===========
@route('/Profesor/Modificar/<id>')
def profesorModificar(id):
    resultado=ProfesorDetalleUno(id)
    return template('ProfesorModificar',rows=resultado)
@route('/modificarprof', method="POST")
def process():
    obj=[]
    nombre = request.forms.get('nombre')
    apellido = request.forms.get('apellido')
    curso = request.forms.get('curso')
    rut = request.forms.get('rut')
    jornada= request.forms.get('jornada')
    Horario=""
    for i in range(1,11):
        l="L"+str(i)
        bloque1=request.forms.get(l)
        if(bloque1!=None):
            bloque1=bloque1+","
            Horario=Horario + bloque1
        else:
            Horario=Horario + "0,"

    for i in range(1,11):
        m="M"+str(i)
        bloque1=request.forms.get(m)
        if(bloque1!=None):
            bloque1=bloque1+","
            Horario=Horario + bloque1
        else:
            Horario=Horario + "0,"
       
    for i in range(1,11):
        mi="Mi"+str(i)
        bloque1=request.forms.get(mi)
        if(bloque1!=None):
            bloque1=bloque1+","
            Horario=Horario + bloque1
        else:
            Horario=Horario + "0,"
        
    for i in range(1,11):
        j="J"+str(i)
        bloque1=request.forms.get(j)
        if(bloque1!=None):
            bloque1=bloque1+","
            Horario=Horario + bloque1
        else:
            Horario=Horario + "0,"
       
    for i in range(1,11):
        v="V"+str(i)
        bloque1=request.forms.get(v)
        if(bloque1!=None):
            bloque1=bloque1+","
            Horario=Horario + bloque1
        else:
            Horario=Horario + "0,"
    Horario=Horario[:-1]
    obj.append(nombre)
    obj.append(apellido)
    obj.append(rut)
    obj.append(curso)
    obj.append(jornada)
    obj.append(Horario)
    opcion=ProfesorUpdate(obj)
    if opcion==1: #exito
        redirect(url('/ProfesoresAll') + '#exitoupdate')
    if opcion ==4:  #error de curso
        redirect(url('/ProfesoresAll') + '#errorcurso')
        
    return template('ProfesorAll')

@route('/Asignatura/Modificar/<id>')
def asignaturaModificar(id):
    resultado=AsignaturasDetalle(id)
    return template('AsignaturaModificar',rows=resultado)
@route('/modificar', method="POST")
def process():
    obj=[]
    nombre = request.forms.get('nombre')
    semestre = request.forms.get('semestre')
    carrera = request.forms.get('carrera')
    nrc = request.forms.get('nrc')
    obj.append(nrc)
    obj.append(nombre)
    obj.append(carrera)
    obj.append(semestre)
  
    opcion=AsignaturaUpdate(obj)
    if opcion==1: #exito
        redirect(url('/AsignaturaAll') + '#exitoupdate')
    if opcion == 2:          #error en ingreso
        redirect(url('/AsignaturaAll') + '#errorupdate')

#===========  Eliminar    ===========
@route('/Profesor/Eliminar/<id>')
def profesorEliminar(id):
    resultado=ProfesorDetalle(id)
    return template('ProfesorEliminar',rows=resultado)
@route('/deleteprofesor', method="POST")
def delete():
    rut = request.forms.get('rut')
    opcion=ProfesorDelete(rut)
    if opcion==1: #exito
        redirect(url('/ProfesoresAll') + '#exitoborrar')
    if opcion == 2:          #error en ingreso
        redirect(url('/ProfesoresAll') + '#errorborrar')

@route('/Asignatura/Eliminar/<id>')
def asignaturaEliminar(id):
    resultado=AsignaturasDetalle(id)
    return template('ProfesorEliminar',rows=resultado)
@route('/delete', method="POST")
def delete():
    obj=[]
    nombre = request.forms.get('nombre')
    semestre = request.forms.get('semestre')
    carrera = request.forms.get('carrera')
    nrc = request.forms.get('nrc')
    obj.append(nrc)
    obj.append(nombre)
    obj.append(carrera)
    obj.append(semestre)
    opcion=AsignaturaDelete(obj)
    if opcion==1: #exito
        redirect(url('/AsignaturaAll') + '#exito')
    if opcion == 2:          #error en ingreso
        redirect(url('/Asignatura/Eliminar/'+nrc) + '#error')


#===========    Crear     ===========
@route('/Profesor/Nuevo')
def profesoresCrear():
    resultado=TodoslosCursos()
    return template('ProfesorNueva',rows=resultado)
@route('/profesornuevo', method="POST")
def process():
    obj=[]
    nombre = request.forms.get('nombre')
    apellido = request.forms.get('apellido')
    curso = request.forms.get('curso')
    rut = request.forms.get('rut')
    jornada= request.forms.get('jornada')
    Horario=""
    for i in range(1,11):
        l="L"+str(i)
        bloque1=request.forms.get(l)
        if(bloque1!=None):
            bloque1=bloque1+","
            Horario=Horario + bloque1
        else:
            Horario=Horario + "0,"

    for i in range(1,11):
        m="M"+str(i)
        bloque1=request.forms.get(m)
        if(bloque1!=None):
            bloque1=bloque1+","
            Horario=Horario + bloque1
        else:
            Horario=Horario + "0,"
       
    for i in range(1,11):
        mi="Mi"+str(i)
        bloque1=request.forms.get(mi)
        if(bloque1!=None):
            bloque1=bloque1+","
            Horario=Horario + bloque1
        else:
            Horario=Horario + "0,"
        
    for i in range(1,11):
        j="J"+str(i)
        bloque1=request.forms.get(j)
        if(bloque1!=None):
            bloque1=bloque1+","
            Horario=Horario + bloque1
        else:
            Horario=Horario + "0,"
       
    for i in range(1,11):
        v="V"+str(i)
        bloque1=request.forms.get(v)
        if(bloque1!=None):
            bloque1=bloque1+","
            Horario=Horario + bloque1
        else:
            Horario=Horario + "0,"
    Horario=Horario[:-1]
    obj.append(nombre)
    obj.append(apellido)
    obj.append(rut)
    obj.append(curso)
    obj.append(jornada)
    obj.append(Horario)
    opcion=ProfesorCreate(obj)
    if opcion==1: #exito
        redirect(url('/ProfesoresAll') + '#exito')
    if opcion == 2:          #error en ingreso
        redirect(url('/Profesor/Nuevo') + '#error')
    if opcion ==3:  #error de rut
        redirect(url('/Profesor/Nuevo') + '#errornrc')
    if opcion ==4:  #error de curso
        redirect(url('/Profesor/Nuevo') + '#errorcurso')
        
    return template('ProfesorAll')

@route('/Asignatura/Nueva')
def asignaturaCrear():
    return template('AsignaturaNueva')
@route('/', method="POST")
def process():
    obj=[]
    nombre = request.forms.get('nombre')
    semestre = request.forms.get('semestre')
    carrera = request.forms.get('carrera')
    nrc = request.forms.get('nrc')
    obj.append(nrc)
    obj.append(nombre)
    obj.append(carrera)
    obj.append(semestre)
  
    opcion=AsignaturaCreate(obj)
    if opcion==1: #exito
        redirect(url('/AsignaturaAll') + '#exitonueva')
    if opcion == 2:          #error en ingreso
        redirect(url('/Asignatura/Nueva') + '#error')
    if opcion ==3:  #error de nrc
        redirect(url('/Asignatura/Nueva') + '#errornrc')
        
    return template('AsignaturaAll')

#===========    Buscar    ===========
@route('/Profesor/Buscar')
def profesoresBuscar():
    return '<h1>Profesores Buscar Pagina!</h1>'

@route('/Asignatura/Buscar')
def asignaturaBuscar():
    return '<h1>Asginatura Buscar Paginaa!</h1>'

#===========   Rutas Estaticas   ===========
@route('/static/<filename>')
def server_static(filename):
    return static_file(filename,root='./img')
@route('/staticjs/<filename>')
def server_static(filename):
    return static_file(filename,root='./js')
@route('/staticss/<filename>')
def server_static(filename):
    return static_file(filename,root='./css')


if __name__== '__main__':
    run(debug=True, reloader=True)