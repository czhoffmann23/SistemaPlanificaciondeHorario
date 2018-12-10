from algoritmo import *
from services import *


def estructuraHorario(hor):
    l=hor.split(",")
    estructura=""
    cont=0
    for i in l:
        cont+=1
        if(i!='0' and cont!=11):
            estructura+=i+","
        if(i!='0' and cont==11):
            estructura+=i+","
            cont=0
        if(i=='0' and cont==11): 
            cont=0
    estructura=estructura[:-1]
    return estructura
def GenerarHorario(semestre,carrera):
    li1=CallServiceConsulta('PartTime',carrera,semestre)
    li2=CallServiceConsulta('FullTime',carrera,semestre)

    horario_inicial=generarhorario()
    conflicto=[]
    for i in li1:
        part_time=[]
        part_time.append(str(i[0]))
        part_time.append(str(i[1]))
        part_time.append(str(i[2]))
        part_time.append(str(i[3]))
        part_time.append(str(i[4]))
        hor=estructuraHorario(str(i[5]))
        part_time.append(hor)
        #print(part_time)
        profes=[part_time]
        bloqueasignatura=CallServiceGetBloque("asignatura","asg_nombre",str(i[3]))
        bloque=str(bloqueasignatura[0][0])
        horario_final=ordenar(profes,bloque,horario_inicial,conflicto)
    

    for i in li2:
        full_time=[]
        full_time.append(str(i[0]))
        full_time.append(str(i[1]))
        full_time.append(str(i[2]))
        full_time.append(str(i[3]))
        full_time.append(str(i[4]))
        hor=estructuraHorario(str(i[5]))
        full_time.append(hor)
        #print(full_time)
        profesfull=[full_time]
        bloqueasignatura=CallServiceGetBloque("asignatura","asg_nombre",str(i[3]))
        bloque=str(bloqueasignatura[0][0])
        #print(bloque)
        horario_final=ordenar(profesfull,bloque,horario_final,conflicto)

    #for x in horario_final:
    #    print(x)
    #for i in conflicto:
    #    print(i)
    return horario_final,conflicto

