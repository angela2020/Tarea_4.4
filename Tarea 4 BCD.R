# b) extracción del título de lanoticia
# extraer la  la noticia,y separ las palabras y almacenarlas en una lista.

#C)Extraiga los datos de la tabla y almacénelos en una variable tipo data.

#instalar rvest
#install.packages("rvest")
library(rvest)
read_html("tarea 4.4.4.html")
pagina<-read_html("tarea 4.4.4.html")

#salidahtml
nodesDelHtml<-html_nodes(pagina,".ShingekiNoKyojin")
  texto<-html_text(nodesDelHtml)

# limpiar el texto
texto<-gsub("\n","",texto)
texto<-gsub("\r","",texto)
texto<-gsub("\t","",texto)

#separar las palabras por espacio
splitEspacioNoticia1<-strsplit(texto," ")[[1]]

#contar palabras

unlisTexto<-unlist(splitEspacioNoticia1)
tablaPalabra1<-table(unlisTexto)
tablaNoticia<-as.data.frame(tablaPalabra1)


## extraccion de la tabla##
nodesHtml<-html_nodes(pagina,".tabla")
htmlTabla<-html_table(html_nodes(pagina,"table")[[1]])

#limpiando $ comas y cambios de puntos por coma
htmlTabla$Lider<-gsub("\\$","",htmlTabla$Lider)
htmlTabla$Jumbo<-gsub("\\$","",htmlTabla$Jumbo)
htmlTabla$Jumbo<-gsub("[.]","",htmlTabla$Jumbo)
htmlTabla$Lider<-gsub("[.]","",htmlTabla$Lider)

#D)extraer informacion pagina web

read_html("Tarea 5.html")
pagina1.1<-read_html("Tarea 5.html")
paginaNodes<-html_nodes(pagina1.1,".note-inner-text")
paginaTexto<-html_text(paginaNodes)
#salidahtml
nodesDelHtml1<-html_nodes(pagina1.1,".note-inner-text")
texto1<-html_text(nodesDelHtml1)
texto2<-gsub("\\n","",texto1)

#separando las palabras por espacio
splitEspacioNoticia2<-strsplit(texto2," ")[[1]]

#contar palabras y agrupar en tabla
unlisTexto2<-unlist(splitEspacioNoticia2)
tablaPalabra2<-table(unlisTexto2)
tablaNoticia2<-as.data.frame(tablaPalabra2)
#=========================================




