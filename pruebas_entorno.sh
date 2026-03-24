#!/bin/bash

# instalacion de dependencias
echo "Instalando dependencias ... "
pip install numpy
pip install matplotlib
echo "Dependencias instaladas"

# ejecutar script
echo "iniciando script ... "
python script.py
echo "Script finalizado"

# imprimir si la prueba funciono o no

if [ -f "resultados.csv" ]; then
    echo "Prueba exitosa"
else
    echo "Prueba fallida"
fi

# borrar archivos generados
rm resultados.csv
rm soluciones.png

# fin del script