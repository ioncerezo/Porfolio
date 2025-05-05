<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="html" doctype-system="about:legacy-compat" />
  <xsl:template match="/">
    <html lang="es">
      <head>
        <script
          src="https://kit.fontawesome.com/f641f5595b.js"
          crossorigin="anonymous"
          ></script>
        <link rel="stylesheet" href="normalize.css" />
        <link
          href="https://fonts.cdnfonts.com/css/pp-neue-montreal"
          rel="stylesheet"
          />
        <link rel="stylesheet" href="style.css" />
        <title>Ion Cerezo Valero - Portfolio</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
      </head>
      <body>
        <header>
          <article>
            <h1>Ion Cerezo Valero</h1>
            <h2>Estudiante de Desarrollo de Aplicaciones Web</h2>
          </article>
          <article>
            <p>
              Actualmente estudio el grado superior DAW en Bilbao. Bienvenidas/os a
              este rincón de internet donde recopilo mis proyectos personales.
            </p>
          </article>
          <article class="one-line">
            <a class="main-color" href="#">Currículum</a>
            <p class="buscando-trabajo">Buscando trabajo</p>
          </article>
        </header>
        
        <hr />
        
        <main>
          <section>
            
            <h2>Proyectos destacados - JAVA</h2>
            <div class="proyectos-destacados">
              <xsl:for-each select="//proyectosDestacados/proyecto">
                <xsl:variable name="alt" select="alt"/>
                <xsl:variable name="src" select="img"/>
                <xsl:variable name="link" select="link"/>
                <xsl:variable name="github" select="github"/>
                <xsl:variable name="web" select="web"/>
                <a href="{$link}" target="_blank">
                  <article class="project-container">
                    <div class="image-container">
                      <img
                        src="{$src}"
                        alt="{$alt}"
                        />
                    </div>
                    <div class="one-line">
                      <p><xsl:value-of select="nombre"/></p>
                      <div>
                        <a href="{$github}"><i class="fa-brands fa-github"></i></a>
                        <a href="{$web}"><i class="fa-solid fa-link"></i></a>
                      </div>
                    </div>
                  </article>
                </a>
              </xsl:for-each>
            </div>
          </section>
          
          <hr />
          
          <section>
            <h2>Otros proyectos</h2>
            <xsl:for-each select="//otrosProyectos/proyecto">
              <xsl:variable name="url" select="link"/>
              <xsl:variable name="deploy" select="deploy"/>
              <xsl:variable name="jar"  select="jar"/>
              <article class="otros-proyectos-line">
                <div class="one-line">
                  <p><xsl:value-of select="nombre"/> </p>
                  <a href="{$url}" target="_blank"><i class="fa-brands fa-github"></i></a>
                  <xsl:choose>
                    <xsl:when test="contains(deploy, '.')">
                      <a href="{$deploy}" target="_blank"><i class="fa-solid fa-link"></i></a>
                    </xsl:when>
                    <xsl:when test="contains(jar, '.')">
                      <a href="{$jar}" target="_blank"><i class="fa-solid fa-download"></i></a>
                    </xsl:when> 
                  </xsl:choose>
                </div>
                <p>
                  <xsl:for-each select="tecnologias/tecnologia">
                    <span><xsl:value-of select="."/></span>
                  </xsl:for-each>
                </p>
              </article>
            </xsl:for-each>
          </section>
          
          <hr />
          
          <section id="experiencia">
            <div>
              <h2>Experiencia laboral como educador social</h2>
              <article class="experiencia-line">
                <p>Vivienda para personas con discapacidad intelectual</p>
                <p>2024 - Actualidad</p>
              </article>
              <article class="experiencia-line">
                <p>Salud mental y autonomía personal</p>
                <p>2022 - 2024</p>
              </article>
              <article class="experiencia-line">
                <p>Centro de día para personas con discapacidad intelectual</p>
                <p>2020 - 2022</p>
              </article>
              <article class="experiencia-line">
                <p>Viviendas tuteladas de menores</p>
                <p>2016 - 2020</p>
              </article>
            </div>
            <hr />
            <div id="experiencia-academica">
              <h2>Experiencia académica</h2>
              <article>
                <p>Desarrollo de Aplicaciones Web</p>
                <p>Formación Profesional</p>
              </article>
              <article>
                <p>Educación Social</p>
                <p>Grado Universitario</p>
              </article>
              <article>
                <p>Integración Social</p>
                <p>Formación Profesional</p>
              </article>
            </div>
          </section>
          
          <hr />
          
          <section id="experiencia-previa">
            <h2>Experiencia previa</h2>
            <p>Habilidades desarrolladas trabajando en contextos complejos:</p>
            <ul>
              <li>
                <strong>Resolución de problemas</strong> complejos, ahora aplicada al
                desarrollo de software.
              </li>
              <li>
                <strong>Comunicación efectiva</strong> para colaborar en equipos de
                desarrollo.
              </li>
              <li>Capacidad de <strong>dinamizar</strong> reuniones de equipo.</li>
              <li><strong>Gestión de proyectos</strong> en entornos cambiantes.</li>
              <li>
                Trabajo centrado en las personas y sus necesidades,
                <strong>no en imponer mi visión.</strong>
              </li>
              <li>
                <strong>Adaptabilidad</strong> constante ante nuevos retos, lenguajes
                y proyectos.
              </li>
            </ul>
          </section>
          
          <hr />
          
          <section>
            <h2>Conectemos</h2>
            <p>
              Puedes contactar conmigo por correo: 
              <a href="mailto:ioncerezovalero@gmail.com">ioncerezovalero@gmail.com</a>
            </p>
            <p>
              O seguir cotilleando un poco mas por aquí: 
              <a href="https://github.com/ioncerezo/"
                 target="_blank">GitHub</a>
            </p>
            
          </section>
        </main>
        
        <hr />
        
        <footer class="one-line">
          <p>
            <a
              href="https://creativecommons.org/publicdomain/zero/1.0/"
              target="_blank"
              rel="license noopener noreferrer"
              >
              CC0 1.0
            </a>
            2025 - Ion Cerezo
          </p>
          <p>Copia, modifica y comparte sin pedir permiso :)</p>
        </footer>
      </body>
    </html>
    
    
  </xsl:template> 
</xsl:stylesheet>