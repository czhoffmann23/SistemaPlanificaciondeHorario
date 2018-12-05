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

@route('/login')
def login():
    return '<h1> CACACA POTO </h1>'
#===========  Visualizar  ===========
@route('/ProfesoresAll')
def profesores():
    return '<h1>Profesores Pagina!</h1>'

@route('/AsignaturaAll')
def asignaturas():
    resultado=AsignaturasAll()
    return template('AsignaturaAll',rows=resultado)
#===========  Detalle     ===========
@route('/Profesor/Detalle/<id>')
def profesorDetalle(id):
    return '<h1>Profesor Detalle Pagina!</h1>'

@route('/Asignatura/Detalle/<id>')
def asginaturaDetalle(id):
    resultado=AsignaturasDetalle(id)
    return template('AsignaturaDetalle',rows=resultado)

#===========  Modificar   ===========
@route('/Profesor/Modificar/<id>')
def profesorModificar(id):
    resultado=ProfesorDetalle(id)
    return template('ProfesorModificar',rows=resultado)
@route('/modificarprof', method="POST")
def process():
    obj=[]
    nombre = request.forms.get('nombre')
    apellido = request.forms.get('apellido')
    curso = request.forms.get('curso')
    rut = request.forms.get('rut')
    obj.append(nombre)
    obj.append(apellido)
    obj.append(curso)
    obj.append(rut)
  
    opcion=ProfesorUpdate(obj)
    if opcion==1: #exito
        redirect(url('/ProfesorAll') + '#exitoupdate')
    if opcion == 2:          #error en ingreso
        redirect(url('/ProfesorAll') + '#errorupdate')

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
    opcion=ProfesorDelete(id)
    if opcion==1: #exito
        redirect(url('/ProfesorAll') + '#exitoborrar')
    if opcion == 2:          #error en ingreso
        redirect(url('/ProfesorAll') + '#errorborrar')

@route('/Asignatura/Eliminar/<id>')
def asignaturaEliminar(id):
    resultado=AsignaturasDetalle(id)
    return template('AsignaturaEliminar',rows=resultado)
@route('/Asignatura/EliminarCompleto/<id>')
def asignaturaEliminarCompleto(id):
    #funcion para eliminar
    redirect(url('/Asignatura/Eliminar/'+id) + '#exito')


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
    return '<h1>Profesores Crear Pagina!</h1>'

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
        redirect(url('/Asignatura/Nueva') + '#exito')
    if opcion == 2:          #error en ingreso
        redirect(url('/Asignatura/Nueva') + '#error')
    if opcion ==3:  #error de nrc
        redirect(url('/Asignatura/Nueva') + '#errornrc')
        
    return template('AsignaturaNueva')

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