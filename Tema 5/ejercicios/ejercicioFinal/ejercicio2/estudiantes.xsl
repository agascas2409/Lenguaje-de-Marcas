<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.1">
    <xsl:template match="/">
        <html lang="es">
        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Estudiantes</title>
            <style>
                h1{
                    background-color: brown;
                    color: lightgreen;
                    text-align: center;
                }
                div{
                    border: solid thin grey;
                    border-radius: 5px;
                    margin-bottom: 5px;
                }

                span{
                    font-weight: bolder;
                }

                ul{
                    list-style: none;
                    padding-left: 7px;
                }
                .color{
                    background-color: lightgreen;
                }
            </style>
        </head>
        <body>
            <h1>Lista de Estudiantes</h1>
            <xsl:for-each select="estudiantes/estudiante">
                <xsl:sort select="edad" order="descending"/>
                <xsl:choose>
                    <xsl:when test="calificacion &gt; 9">
                        <div class="color">
                            <ul>
                                <li><span>Nombre: </span><xsl:value-of select="nombre"/></li>
                                <li><span>Edad: </span><xsl:value-of select="edad"/></li>
                                <li><span>Calificación: </span><xsl:value-of select="calificacion"/></li>
                            </ul>
                        </div>
                    </xsl:when>
                    <xsl:otherwise>
                        <div>
                            <ul>
                                <li><span>Nombre: </span><xsl:value-of select="nombre"/></li>
                                <li><span>Edad: </span><xsl:value-of select="edad"/></li>
                                <li><span>Calificación: </span><xsl:value-of select="calificacion"/></li>
                            </ul>
                        </div>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>