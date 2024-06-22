
# Filogenia de los Helechos del Género Adiantum
#### Sebastian Barba (sdbarba@puce.edu.ec) </br> June 22, 2024

El género Adiantum, comúnmente conocido como los "adiantos" o "culantrillos", abarca una amplia diversidad de helechos distribuidos globalmente en una variedad de hábitats. Estos helechos se caracterizan por sus frondes delicadas y finamente segmentadas, que les confieren una apariencia distintiva y ornamental. Adiantum incluye alrededor de 200 especies reconocidas, que se encuentran en regiones tropicales, subtropicales y templadas de todo el mundo.

La filogenia de los helechos del género Adiantum investiga las relaciones evolutivas entre estas diversas especies. Utilizando técnicas de análisis filogenético basadas en datos moleculares y morfológicos, los científicos buscan reconstruir el árbol genealógico del género. Este enfoque no solo revela la historia evolutiva compartida entre las diferentes especies de Adiantum, sino que también ayuda a entender cómo han divergido y adaptado a diferentes condiciones ambientales a lo largo del tiempo geológico.

La investigación en filogenia de Adiantum no solo es crucial para entender la evolución y la biodiversidad dentro de este género de helechos, sino que también tiene implicaciones para la conservación y la taxonomía, proporcionando una base sólida para la clasificación y el manejo de estas plantas en peligro de extinción y en entornos naturales y cultivados.

![Adiantum](https://www.researchgate.net/profile/Jefferson-Prado/publication/326286644/figure/fig1/AS:672164801949698@1537267985566/Key-morphological-traits-for-Adiantum-leaves-A-B-All-species-of-Adiantum-share-a.ppm)



*Imagen recuperada de Research Gate* </br> </br>

#### Instrucciones

Estos scripts se pueden ejecutar individualmente en su computadora. En el caso que los scripts automaticos no sirvan se aconseja correr de forma manual.

Indicaciones para descargar La filogenia del genero Adiantum

 Primero se accede al NCBI en la categoria de GENES y se descarga en formato FASTA los genes que se van a trabajar para armar la filogenia
 Si no son mucho y se descarga en formato de txt se puede modificar sin la necesidad de SUBLIME
 Ya modificados y ubicados en DATA
 Se descarga la Herramienta de IQTREE para crear la filogenia con el archivo.txt modificado ubicado en DATA
 Accedemos a la ubicación iqtree2 y procesamos los datos del documento de texto “Adiantum.txt”
$ <direccion de iqtree2.exe> -s Adiantum.txt -B 1000
 Para crear la filogenia utilizamos el programa FigTree cargando el archivo “Adiantum.txt.treefile”
 Descargamos la filogenia y la pegamos en resultados 
 Por cada nuevo archivo que se subirá a GitHub se añade. $
$ git add <nombre del archivo>
 Si es un conjunto de archivo en una carpeta
$ git add .
 Agregar los archivos al área de staging, se realiza un commit para guardar los cambios en el repositorio local:
$ git commit -m "Nombre"
 Para revisar los cambios o estado de los archivos 
$ git status
 Para subir los cambios desde el equipo al repositorio en git hub 
$ git push origin main
 FIN




#### process_phylogeny.sh
Este es un script bash permite procesar el archivo de texto donde se ubica los datos formatos FASTA en las 2 aplicaciones para crear la filogenia. Primero se abrira la aplicacion de IQTREE para procesar los datos , seguido se procesara el archivo .treefile generado por IQTREE mediante la aplicacion de FIGTREE para construir la filogenia.

### Programas utilizados

#### IQTREE
IQ-TREE es un programa de software ampliamente utilizado para la inferencia de árboles filogenéticos a partir de datos moleculares. Su nombre proviene de "Iterative Quadratic Tree Estimation", reflejando su enfoque en métodos iterativos y eficientes para la estimación de árboles filogenéticos basados en criterios de máxima verosimilitud (ML), aunque también soporta otros métodos como la inferencia bayesiana.

#### FIGTREE
FIGTREE es una herramienta de software diseñada específicamente para la visualización y exploración de árboles filogenéticos. Su nombre proviene de "Figurative Tree", lo que refleja su función principal de representar de manera gráfica y interactiva los árboles filogenéticos inferidos a partir de datos genéticos o moleculares.

#### Instalacion manual
En el caso que el script no pueda ejecutarse o los programas no se instale se puede realizar de manera manual siguien estos enlaces:

 [FigTree](http://tree.bio.ed.ac.uk/download.php?id=90)
 [FigTree](figtree.zip)

[IQTree](https://github.com/iqtree/iqtree2/releases)
 [IQTree](iqtree-2.1.2-Windows.zip)

#### Filogenia Adiantum

Si los scripts funcionaron correctamente deberia aparecer una imagen similar:


<img src="result/Filogenia Adiantum" alt="Filogenia Adiantum" width="40%">


# PREGUNTAS 
1. Que tipo de datos ?
Filogenias del gen rbcl en Helechos del género Adiantum
2. En que formato estan tus datos
FASTA (genes)
3. Que quisieras hacer con tus datos
Realizar una filogenia con IQTREE

#RECURSOS ADICIONALES

4. IMAGEN: Morfología género Adiantum
https://www.researchgate.net/profile/Jefferson-Prado/publication/326286644/figure/fig1/AS:672164801949698@1537267985566/Key-morphological-traits-for-Adiantum-leaves-A-B-All-species-of-Adiantum-share-a.ppm

5. VIDEO: Informacion general del género Adiantum
https://www.youtube.com/watch?v=Ay1yz-VcZwE
