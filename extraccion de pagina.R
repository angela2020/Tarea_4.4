#instalar rvest
#install.packages("rvest")
library(rvest)
read_html("tarea 4.4.4.html")
pagina<-read_html("tarea 4.4.4.html")
#salidahtml
nodesDelHtml<-html_nodes(pagina,".ShingekiNoKyojin")
texto<-html_text(nodesDelHtml)

texto<-gsub("\n","",texto)
texto<-gsub("\r","",texto)
texto<-gsub("\t","",texto)
## extraccion de la tabla##
nodesHtml<-html_nodes(pagina,".tabla")
htmlTabla<-html_table(html_nodes(pagina,"table"))[[1]]


  #[[1]]para que salga con forma de tabla. 
#sacar el signo peso
t<-html_table(nodesHtml)
t<-gsub("\$","",table)


