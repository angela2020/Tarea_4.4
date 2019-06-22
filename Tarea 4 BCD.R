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
splitEspacioNoticia<-strsplit(texto," ")[[1]]

#contar palabras

unlisTexto<-unlist(splitEspacioNoticia)
tablaPalabra<-table(unlisTexto)
tablaNoticia<-as.data.frame(tablaPalabra)
## extraccion de la tabla##
nodesHtml<-html_nodes(pagina,".tabla")
htmlTabla<-html_table(html_nodes(pagina,"table")[[1]])

#limpiando $ comas y cambios de puntos por coma
htmlTabla$Lider<-gsub("\\$","",htmlTabla$Lider)
htmlTabla$Jumbo<-gsub("\\$","",htmlTabla$Jumbo)
htmlTabla$Jumbo<-gsub("[.]","",htmlTabla$Jumbo)
htmlTabla$Lider<-gsub("[.]","",htmlTabla$Lider)

#D)extraer informacion pagina web

#install.packages("rvest")
library(rvest)
read_html("tarea 5.html")
pagina1.1<-read_html("tarea 5.html")
paginaNodes<-html_nodes(pagina1.1,".site-header hgroup")
paginaTexto<-html_text(paginaNodes)
#salidahtml
nodesDelHtml1<-html_nodes(pagina1.1,".entry-content")
texto1<-html_text(nodesDelHtml1)


