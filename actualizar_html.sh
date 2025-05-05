#!/bin/bash

# Ruta al archivo JAR de Saxon
SAXON_JAR="saxon/saxon-he-12.6.jar"

# Transformar XML con XSL
java -jar "$SAXON_JAR" \
  -s:"xml y xlst/porfolio.xml" \
  -xsl:"xml y xlst/porfolio.xsl" \
  -o:"docs/index.docs"

# Copiar archivos CSS
cp "xml y xlst/style.css" "docs/style.css"
cp "xml y xlst/normalize.css" "docs/normalize.css"

echo "Todo listo. HTML y CSS copiados a la carpeta html."
