@echo off
REM Ruta al archivo JAR de Saxon
set SAXON_JAR="saxon\saxon-he-12.6.jar"

REM Transformar XML con XSL
java -jar "%SAXON_JAR%" ^
 -s:"xml y xlst\porfolio.xml" ^
 -xsl:"xml y xlst\porfolio.xsl" ^
 -o:"docs\index.docs"

REM Copiar archivos CSS
copy "xml y xlst\style.css" "docs\style.css" >nul
copy "xml y xlst\normalize.css" "docs\normalize.css" >nul

echo Todo listo. HTML y CSS copiados a la carpeta html.
pause