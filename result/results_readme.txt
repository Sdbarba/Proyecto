Indicaciones para descargar La filogenia del genero Adiantum

# Primero se accede al NCBI en la categoria de GENES y se descarga en formato FASTA los genes que se van a trabajar para armar la filogenia
# Si no son mucho y se descarga en formato de txt se puede modificar sin la necesidad de SUBLIME
# Ya modificados y ubicados en DATA
# Se descarga la Herramienta de IQTREE para crear la filogenia con el archivo.txt modificado ubicado en DATA
# Accedemos a la ubicación iqtree2 y procesamos los datos del documento de texto “Adiantum.txt”
$ /c/Users/estudiante/Desktop/iqtree-2.3.4/bin/iqtree2.exe -s Adiantum.txt -B 1000
# Para crear la filogenia utilizamos el programa FigTree cargando el archivo “Adiantum.txt.treefile”
# Descargamos la filogenia y la pegamos en resultados 
# Por cada nuevo archivo que se subirá a GitHub se añade. $
$ git add <nombre del archivo>
# Si es un conjunto de archivo en una carpeta
$ git add .
# Agregar los archivos al área de staging, se realiza un commit para guardar los cambios en el repositorio local:
$ git commit -m "Nombre"
# Para revisar los cambios o estado de los archivos 
$ git status
# Para subir los cambios desde el equipo al repositorio en git hub 
$ git push origin main
# FIN
