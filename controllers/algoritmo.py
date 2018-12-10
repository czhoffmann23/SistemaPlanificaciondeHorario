
def generarhorario():
    a=["LB","MB","MiB","JB","VB"]
    c=[]
    for x in a:
        b=[]
        for i in range(1,11):
            b.append(x+str(i))
        c.append(b)
    return c
def buscar(bloque,horario):
    a=False
    for i in range(0,len(horario)):
        for k in range(0,len(horario[0])):
            if(horario[i][k]==bloque):
                a=True
                return i,k
    if a==False:
        return False

def asignar(bloques,horario,num,curso,conflicto):
    numero=int(num)
    for k in bloques:
        a=buscar(k,horario)
        if(a!=False and numero>=0):
            #print("asigando",horario[a[0]][a[1]])
            horario[a[0]][a[1]]=curso
            numero-=1
        if(a==False):
            h=generarhorario()
            for i in range(0,len(h)):
                if k in h[i]:
                    y = h[i].index(k)
                    x=i
            st="conflicto entre "+str(horario[x][y])
            st2=" con curso "+str(curso) + " en bloque "+ str(k)
            st3=st+st2
            conflicto.append(st3)
            numero-=1
        if(numero==0):
            return horario


        
   
def ordenar(profes,bloques,horario,conflicto):
    num=int(bloques)
    curso=[]
    jornada=[]
    horarios=[]
    curso.append(profes[0][3])
    horarios.append(profes[0][5])
    dias=horarios[0].split(",")
    bloques=[]
    for d in dias:
        bloques.append(d)
    horario=asignar(bloques,horario,num,curso[0],conflicto)
    return horario

   