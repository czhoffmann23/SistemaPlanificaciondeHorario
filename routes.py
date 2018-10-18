from bottle import route, run, template,static_file,error


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
@route('/profesores')
def profesores():
    return '<h1>Profesores Pagina!</h1>'

@route('/asignaturas')
def profesores():
    return '<h1>Asignaturas Pagina!</h1>'
#===========  Detalle     ===========
@route('/profesor/<id>')
def profesorDetalle(id):
    return '<h1>Profesor Detalle Pagina!</h1>'

@route('/asignatura/<id>')
def asginaturaDetalle(id):
    return '<h1>Asginatura Detalle Pagina!</h1>'

#===========  Modificar   ===========
@route('/profesor/modificar/<id>')
def profesorModificar(id):
    return '<h1>Profesor Modificar Pagina!</h1>'

@route('/asignatura/modificar/<id>')
def asignaturaModificar(id):
    return '<h1>Asginatura Modificar Pagina!</h1>'

#===========  Eliminar    ===========
@route('/profesor/eliminar/<id>')
def profesorEliminar(id):
    return '<h1>Profesor Eliminar Pagina!</h1>'

@route('/asignatura/eliminar/<id>')
def asignaturaEliminar(id):
    return '<h1>Asginatura Eliminar Pagina aaaa  '+id+'!</h1>'

#===========    Crear     ===========
@route('/profesor/crear')
def profesoresCrear():
    return '<h1>Profesores Crear Pagina!</h1>'

@route('/asignatura/crear')
def asignaturaCrear():
    return '<h1>Asginatura Crear Paginaa!</h1>'

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