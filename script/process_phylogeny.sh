#!/bin/bash

# Se trabaja con el archivo de texto con datos FASTA
TEXT_FILE="Adiantum.txt"

# Se Verifica que el archivo de texto existe
if [ ! -f "$TEXT_FILE" ]; then
  echo "El archivo $TEXT_FILE no existe."
  exit 1
fi

# Se ingresa esta función para instalar IQ-TREE en el sistema
install_iqtree() {
  if ! command -v iqtree &> /dev/null; then
    echo "IQ-TREE no está instalado. Descargando IQ-TREE para Linux..."
    curl -LO https://github.com/iqtree/iqtree2/releases/download/v2.1.2/iqtree-2.1.2-Linux.tar.gz
    tar -zxvf iqtree-2.1.2-Linux.tar.gz
    export PATH=$PATH:$(pwd)/iqtree-2.1.2-Linux/bin
  else
    echo "IQ-TREE ya está instalado en $(command -v iqtree)."
  fi
}

# Se ingresa esta función para instalar FigTree en el sistema
install_figtree() {
  if ! command -v figtree &> /dev/null; then
    echo "FigTree no está instalado. Descargando FigTree para Linux..."
    curl -LO http://tree.bio.ed.ac.uk/download.php?id=90 -o figtree.zip
    unzip figtree.zip -d figtree
    export PATH=$PATH:$(pwd)/figtree
  else
    echo "FigTree ya está instalado en $(command -v figtree)."
  fi
}

# Si no estan instalados IQ-TREE y FigTree se utiliza esta funcion
install_iqtree
install_figtree

# Se corre IQ-TREE con el archivo de texto existente
echo "Ejecutando IQ-TREE con $TEXT_FILE..."
iqtree -s "$TEXT_FILE"

# Se Verifica que IQ-TREE haya generado el archivo treefile
TREE_FILE="${TEXT_FILE}.treefile"
if [ ! -f "$TREE_FILE" ]; then
  echo "El archivo treefile no se generó correctamente."
  exit 1
fi

echo "El archivo treefile se generó correctamente: $TREE_FILE"

# Se Abre el archivo treefile con FigTree para obtener la filogenia
echo "Abriendo $TREE_FILE con FigTree..."
./figtree/FigTree "$TREE_FILE"
# Se utiliza este comando para ejecutar el script : 
<./process_phylogeny.sh>
