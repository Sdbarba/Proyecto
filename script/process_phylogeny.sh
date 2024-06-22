#!/bin/bash

# Usar una ruta relativa para acceder a adiantum.txt
ruta_al_adiantum="../data/adiantum.txt"

# Verificar si el archivo adiantum.txt existe y luego hacer algo con él
if [ -f "$ruta_al_adiantum" ]; then
    echo "El archivo adiantum.txt existe en la ruta: $ruta_al_adiantum"
    # Realizar acciones adicionales aquí
else
    echo "El archivo adiantum.txt no se encuentra en la ruta: $ruta_al_adiantum"
fi

# Función para instalar IQ-TREE en el sistema
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

# Función para instalar FigTree en el sistema
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

# Instalar IQ-TREE y FigTree si no están instalados
install_iqtree
install_figtree

# Correr IQ-TREE con el archivo de texto existente
echo "Ejecutando IQ-TREE con $TEXT_FILE..."
iqtree -s "$TEXT_FILE"

# Verificar que IQ-TREE haya generado el archivo treefile
TREE_FILE="${TEXT_FILE}.treefile"
if [ ! -f "$TREE_FILE" ]; then
  echo "El archivo treefile no se generó correctamente."
  exit 1
fi

echo "El archivo treefile se generó correctamente: $TREE_FILE"

# Abrir el archivo treefile con FigTree
echo "Abriendo $TREE_FILE con FigTree..."
./figtree/FigTree "$TREE_FILE"
