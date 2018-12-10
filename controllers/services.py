
# -*- coding: utf-8 -*-
#!/usr/bin/env python
from mysql.connector import (connection)

def run_query(query=''): 
    conn = connection.MySQLConnection(user='root', password='',host='127.0.0.1',database='sistema')# Conectar a la base de datos 
    cursor = conn.cursor()         # Crear un cursor 
    cursor.execute(query)          # Ejecutar una consulta 
    
    if query.upper().startswith('SELECT'): 
        data = cursor.fetchall()   # Traer los resultados de un select
        
    else: 
        conn.commit()              # Hacer efectiva la escritura de datos
        data = None 
 
    cursor.close()                 # Cerrar el cursor 
    conn.close()                   # Cerrar la conexión 
    
    
    return data

#==============  Get Cursos ================
def CallServiceGetAtributo(Tabla,atributo):
    query="SELECT "+Tabla+"."+atributo+" FROM "+str(Tabla)+""
    data = run_query(query)
    error=[]
    if data==error:
       return error

    else:
        return data

#==============  Get ================
def CallServiceGet(Tabla):
    query="SELECT * FROM "+str(Tabla)+""
    data = run_query(query)
    error=[]
    if data==error:
       return error

    else:
        return data

#==============  GetOne ================
def CallServiceGetOne(Tabla,id):
    query="SELECT * FROM "+str(Tabla)+" WHERE id ="+str(id)+""
    data = run_query(query)
    error=[]
    if data==error:
        print("No se encontro niuna wam")

    else:
        return data

#==============  GetNRC ================asg_nrc
def CallServiceGetSomething(Tabla,atributo,resultado):
    query="SELECT * FROM "+str(Tabla)+" WHERE "+str(atributo)+" = "+str(resultado)+""
    data = run_query(query)
    error=[]
    if data==error:
        return error

    else:
        return data

#==============  GetRut ================
def CallServiceGetRut(Tabla,rut):
    query="SELECT * FROM "+str(Tabla)+" WHERE rut = "+str(rut)+""
    data = run_query(query)
    #print("data",data)
    error=[]
    if data==error:
        return error

    else:
        return data
#==============  GetCurso ================
def CallServiceGetCurso(Tabla,curso):
    query="SELECT * FROM "+str(Tabla)+" WHERE curso = '"+str(curso)+"'"
    data = run_query(query)
    #print("data",data)
    error=[]
    if data==error:
        return error

    else:
        return data
#==============  SaveASignatura ================
def CallServiceSaveAsignatura(Tabla,obj):
    insert= "INSERT INTO "+Tabla+" (`asg_nrc`, `asg_nombre`, `asg_carrera`, `asg_semestre`, `id`, `bloque`)"
    insert2= " VALUES ('"+obj[0] +"','"+obj[1]+"','"+obj[2]+"','"+obj[3]+"',NULL,'"+obj[4]+"')"
    query=insert+insert2
    data = run_query(query)
    error=[]
    if data==error:
        return error 

    else:
        return data
#==============  SaveProfesor ================
def CallServiceSaveProfesor(Tabla,obj):
    insert="INSERT INTO "+Tabla+" (`nombre`, `apellido`, `rut`, `curso`, `jornada`, `horario`)"
    insert2= " VALUES ('"+obj[0] +"','"+obj[1]+"','"+obj[2]+"','"+obj[3]+"','"+obj[4]+"','"+obj[5]+"')"
    query=insert+insert2
    data = run_query(query)
    error=[]
    if data==error:
        return error 

    else:
        return data

#==============  UpdateASignatura ================
def CallServiceUpdateAsignatura(Tabla,obj):
    print("obj servicio", obj)
    insert= "UPDATE "+Tabla+" SET `asg_nrc`='"+obj[0]+"',`asg_nombre`='"+obj[1]+"',`asg_carrera`='"+obj[2]+"',`asg_semestre`='"+obj[3]+"',`id`='"+str(obj[4])+"',`bloque`='"+str(obj[5])+"'"
    insert2= " WHERE asg_nrc = '"+obj[0]+"'"
    query=insert+insert2
    print(query)
    data = run_query(query)
    error=[]
    if data==error:
        return error 

    else:
        return data
#==============  UpdateProfesor ================
def CallServiceUpdateProfesor(Tabla,obj):
    print("obj servicio", obj)
    insert= "UPDATE "+Tabla+" SET `nombre`='"+obj[0]+"',`apellido`='"+obj[1]+"',`rut`='"+obj[2]+"',`curso`='"+obj[3]+"',`jornada`='"+obj[4]+"',`horario`='"+obj[5]+"'"
    insert2= " WHERE rut = '"+obj[2]+"'"
    query=insert+insert2
    print(query)
    data = run_query(query)
    error=[]
    if data==error:
        return error 

    else:
        return data
#==============  DeleteAsignatura ================
def CallServiceDeleteAsignatura(Tabla,obj):
    query="DELETE FROM "+Tabla+" WHERE asg_nrc = '"+obj[0]+"'"
    data = run_query(query)
    error=[]
    if data==error:
        return error 

    else:
        return data
#==============  DeleteProfesor ================
def CallServiceDeleteProf(Tabla,rut):
    query="DELETE FROM "+Tabla+" WHERE rut = '"+rut+"'"
    data = run_query(query)
    error=[]
    if data==error:
        return error 

    else:
        return data