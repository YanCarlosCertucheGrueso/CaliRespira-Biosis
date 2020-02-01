import csv

def BaseDatos(file):
    valores=[]
    datos=[]
    BasePM25=[]
    BaseF=[]
    BaseH=[]
    BasePM1=[]
    BasePM10=[]
            
    #Leer el csv 
    with open(file) as csvarchivo:
        entrada = csv.reader(csvarchivo)
        print(entrada)
        for reg in entrada:
            valores.append(reg)
            
        #Ignora los primeros registros, no sirven para nada

        i=8
        while i< len(valores):
            datos.append(valores[i])
            i=i+1
 
        #Cambio de Nombres para el nuevo archivo
        datos[0][5]='Temperatura'
        datos[0][6]='PM1'
        datos[0][7]='PM10'
        datos[0][8]='PM2.5'
        datos[0][9]='Humedad'

        ##ignorar resgistros que tienen el PM2.5 vacio
        ID=0
        for i in datos:
            if i[8]!='':
                if i[0]!="ObjectID":
                    i[0]=ID
                if i[8]!= 'PM2.5':
                    i[8]=int(float(i[8]))
                BasePM25.append(i)
                ID=+ID+1

                
                
        ##Escribir Base de Datos
        miCsv=open('Base.csv', 'w', newline='')
        with miCsv:
            writer=csv.writer(miCsv)
            writer.writerows(BasePM25)
BaseDatos('prueba.csv')    
    
        

        
        
