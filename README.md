# Sitio Web de Portafolio Personal

Un sitio web de portafolio minimalista construido utilizando transformación XML y XSLT. Este proyecto muestra mis habilidades, proyectos y experiencia profesional con un diseño limpio, moderno y de diseño responsive.

## 📋 Descripción general

Este sitio web de portafolio se genera a partir de datos XML utilizando transformaciones XSLT. La estructura del proyecto separa el contenido (XML) de la presentación (XSLT y CSS), lo que facilita la actualización de información sin modificar el diseño.

![Captura de pantalla del Portafolio](https://via.placeholder.com/800x450)

## 🔧 Tecnologías utilizadas

- **XML**: Almacena todos los datos de contenido del portafolio
- **XSLT**: Transforma XML en HTML
- **CSS**: Estiliza el HTML transformado
- **Saxon**: Impulsa el proceso de transformación XML

## 📁 Estructura del proyecto

```
│   actualizar_html.bat          # Script de Windows para transformar XML y copiar recursos
│   actualizar_html.sh           # Script de Linux/Mac para transformar XML y copiar recursos
│
├───xml y xlst                   # Archivos fuente
│       porfolio.xml             # Datos de contenido del portafolio
│       porfolio.xsl             # Plantilla de transformación XSLT
│       style.css                # Hoja de estilos personalizada
│       normalize.css            # Reset CSS de Eric Meyer
│
├───docs                         # Directorio de salida para los archivos del sitio web
│       style.css                # Hoja de estilos copiada
│       normalize.css            # Reset CSS copiado
│       index.html               # Salida HTML generada
│       index.docs               # Copia de seguridad del HTML generado
│
└───saxon                        # Archivos del procesador XSLT
    │   saxon-he-12.6.jar        # Archivo JAR de Saxon HE (Home Edition)
    │   saxon-he-test-12.6.jar
    │   saxon-he-xqj-12.6.jar
    │
    ├───doc                      # Documentación de Saxon
    ├───lib                      # Dependencias de Saxon
    └───notices                  # Archivos de licencia
```

## 🚀 Cómo usar

### Requisitos previos

- Entorno de ejecución Java (JRE) instalado en tu sistema

### Construyendo el sitio web

#### Windows:

1. Clona este repositorio
2. Haz doble clic en `actualizar_html.bat` o ejecútalo desde la línea de comandos

```
actualizar_html.bat
```

#### Linux/Mac:

1. Clona este repositorio
2. Haz ejecutable el script:
   ```
   chmod +x actualizar_html.sh
   ```
3. Ejecuta el script:
   ```
   ./actualizar_html.sh
   ```

Los scripts harán lo siguiente:
1. Transformar los datos XML utilizando la plantilla XSLT
2. Guardar el resultado como `index.html` en la carpeta `docs`
3. Copiar los archivos CSS a la carpeta `docs`

### Personalización del contenido

Para actualizar la información de tu portafolio:

1. Edita `xml y xlst/porfolio.xml` con tu información personal, proyectos y experiencia
2. Ejecuta el script correspondiente a tu sistema operativo para reconstruir el sitio web

### Personalización del diseño

Para modificar el diseño:

1. Edita `xml y xlst/porfolio.xsl` para cambiar la estructura HTML
2. Edita `xml y xlst/style.css` para actualizar los estilos
3. Ejecuta el script correspondiente para reconstruir el sitio web

## 📝 Licencia

Este proyecto está disponible bajo la licencia [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/) - siéntete libre de copiar, modificar y compartir sin pedir permiso.

## 🙏 Agradecimientos

- [Saxon](https://www.saxonica.com/products/products.xml) - Procesador XSLT utilizado para la transformación XML
- [Reset CSS de Eric Meyer](https://meyerweb.com/eric/tools/css/reset/) - Reset CSS utilizado en este proyecto
- [PP Neue Montreal](https://fonts.cdnfonts.com/css/pp-neue-montreal) - Fuente utilizada en el diseño
- [Font Awesome](https://fontawesome.com/) - Iconos utilizados en todo el portafolio

## 📬 Contacto

No dudes en contactarme en [ioncerezovalero@gmail.com](mailto:ioncerezovalero@gmail.com) o visitar mi [perfil de GitHub](https://github.com/ioncerezo/).
