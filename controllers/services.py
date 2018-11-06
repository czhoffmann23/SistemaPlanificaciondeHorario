
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

#==============  GetNRC ================
def CallServiceGetNRC(Tabla,nrc):
    query="SELECT * FROM "+str(Tabla)+" WHERE asg_nrc = "+str(nrc)+""
    data = run_query(query)
    error=[]
    if data==error:
        return error

    else:
        return data


#==============  SaveASignatura ================
def CallServiceSaveAsignatura(Tabla,obj):
    insert= "INSERT INTO "+Tabla+" (`asg_nrc`, `asg_nombre`, `asg_carrera`, `asg_semestre`, `id`)"
    insert2= " VALUES ('"+obj[0] +"','"+obj[1]+"','"+obj[2]+"','"+obj[3]+"',NULL)"
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
    insert= "UPDATE "+Tabla+" SET `asg_nrc`='-1',`asg_nombre`='"+obj[1]+"',`asg_carrera`='"+obj[2]+"',`asg_semestre`='"+obj[3]+"',`id`='"+str(obj[4])+"'"
    insert2= " WHERE asg_nrc = '"+obj[0]+"'"
    query=insert+insert2
    print(query)
    data = run_query(query)
    error=[]
    if data==error:
        return error 

    else:
        return data