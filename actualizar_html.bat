@echo off
REM Ruta al archivo JAR de Saxon
set SAXON_JAR="saxon\saxon-he-12.6.jar"

REM Transformar XML con XSL
java -jar "%SAXON_JAR%" ^
 -s:"xml y xlst\porfolio.xml" ^
 -xsl:"xml y xlst\porfolio.xsl" ^
 -o:"html\index.html"

REM Copiar archivos CSS
copy "xml y xlst\style.css" "html\style.css" >nul
copy "xml y xlst\normalize.css" "html\normalize.css" >nul

echo Todo listo. HTML y CSS copiados a la carpeta html.
pause