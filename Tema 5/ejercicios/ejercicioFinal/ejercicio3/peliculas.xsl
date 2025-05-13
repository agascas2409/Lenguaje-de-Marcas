<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.1">
    <xsl:template match="/">
        <html lang="es">
        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Peliculas</title>
            <style>
                body{
                    background-color: lightgray;
                }
                h1{
                    background-color: yellow;
                    color: darkblue;
                    text-align: center;
                }
                .contenedor{
                    display: grid;
                    grid-template-columns: repeat(3, 1fr);
                    gap: 15px;
                    width: 100%;
                    align-items: center;
                }
                .contenedor div {   
                    display: grid;
                    background-color: aliceblue;
                    padding: 5px;
                    border-radius: 2px;
                    border: solid black 1px;
                    width: 370px;
                    height: 180px;
                    border-radius: 15px;
                    box-shadow: darkblue;
                    box-shadow: 2px 2px 5px black; 
                }
                span{
                    font-weight: bolder;
                }
                ul{
                    list-style: none;
                    padding-left: 7px;
                }
                .contenedor .duracion{
                    border: solid blue;
                }
            </style>
        </head>
        <body>
            <h1>Lista de Peliculas</h1>
            <div class="contenedor">
                <xsl:for-each select="peliculas/pelicula">
                <xsl:sort select="anio" order="descending"/>
                    <xsl:choose>
                        <xsl:when test="duracion &gt; 150">
                            <div class="duracion">
                                <h2><xsl:value-of select="titulo"/></h2>
                                <ul>
                                    <li><span>Genero: </span><xsl:value-of select="genero"/></li>
                                    <li><span>Año: </span><xsl:value-of select="anio"/></li>
                                    <li><span>Duracion: </span><xsl:value-of select="duracion"/></li>
                                </ul>
                            </div>
                        </xsl:when>
                        <xsl:otherwise>
                            <div>
                                <h2><xsl:value-of select="titulo"/></h2>
                                <ul>
                                    <li><span>Genero: </span><xsl:value-of select="genero"/></li>
                                    <li><span>Año: </span><xsl:value-of select="anio"/></li>
                                    <li><span>Duracion: </span><xsl:value-of select="duracion"/></li>
                                </ul>
                            </div>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
            </div>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>