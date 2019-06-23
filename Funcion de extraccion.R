#separando las palabras por espacio
splitEspacioNoticia<-strsplit(textoNoticia," ")[[1]]


#pasando todas las palabras a minusculas

splitEspacioNoticia<-tolower(splitEspacioNoticia)


#contar palabras

unlisNoticias<-unlist(splitEspacioNoticia)
tablaPalabra<-table(unlisNoticia)

#pasando la informacion a un data frame
dfPalabrasNoticia<-as.data.frame(tablaPalabra)

#almacenamiento la informacion en csv
write.csv(dfPalabrasNoticia,file=palabrasNoticia.csv)
#alamcenamiento en un txt
write.table(dfPalabrasNoticia,file="palabrasNoticia.txt",sep=";")

#extrayendo los elementos que contienen las tablas
tablaProducto<-html_nodes(webpage,".productos")

#extraccion de informacion tabla 1
tabla1<-html_table(contenedorDeTabla[1][[1]])
#ver el contenido de la posicion 1,2 de la tabla 1
print(tabla1[1,2])

#extraccion informacion tabla 2
tabla2<-html_table(contenedorDeTabalas[2][[1]])

#viendo el contenido de la pocision 1,2 de la tabla 2
print(tabla2[1,2])

#limpiando $ comas y cambios de puntos por coma
tabla1$Valor<-gsub("\\$","",tabla1$Valor)
tabla1$Valor<-gsub("[.]","",tabla1$Valor)

#as.numerico transforma la columna a elementos numericos
tabla1$Valor<-as.numeric(tabla1$Valor)
tabla2$Valor<-as.numeric(tabla2$Valor)

#combinando los dos data frame
#----------------------------------------------------------------------
#
dfVariable[whict(dfVariable$Columna=="(loqbuscamos"),]

#graficar barra
tablaMerge%>%
  ggplot()
aes(x=ProductoSupermercado), y=Valor +
  geom_bar(stat="identity")

#grafico de dispercion-------------------------

#===========Feria chilena del libro================================#
paginaChilenaDelLibro<-"https://www.feriachilenadellibro.cl/"

paginaChilenaRead<-read_html(paginaChilenaDelLibro)
paginaChilenaNodesReferencias<-html_nodes(paginaChilenaRead,".product-item-photo")
#html_attr(paginaChilenaNodesReferencias,"href")
referencias<-html_attr(paginaChilenaNodesReferencias,"href")

for(refe in referencias){
    print(refe)
  lecturaLibro<-read_html(refe)
  precio<-html_text(html_nodes(lecturaLibro,".price"))
  print(precio)
  
}







