<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.1">
    <xsl:template match="/">
        <html lang="es">
        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Ejercicio 1</title>
            <style>
                body {
                    font-size: <xsl:value-of select="biblioteca/css/body/letra"/> 
                    <xsl:value-of select="biblioteca/css/body/letra/@unidad"/>;
                } 
                table {
                    border-color: <xsl:value-of select="biblioteca/css/tabla/colorBorder"/>;
                    border-style: <xsl:value-of select="biblioteca/css/tabla/tipoBorder"/>;
                    border-width: <xsl:value-of select="biblioteca/css/tabla/tamanioBorder"/>
                        <xsl:value-of select="biblioteca/css/tabla/tamanioBorder/@unidad"/>
                }
                th, td {
                    border: 1px solid <xsl:value-of select="biblioteca/css/tabla/colorBorder"/>
                }
                .antiguo {
                    background-color: red;
                }
                .prestado {
                    background-color: yellow;
                }
            </style>
        </head>
        <body>
            <h2>Biblioteca</h2>
            <table>
                <tr>
                    <td>Titulo</td>
                    <td>Autor</td>
                    <td>Año</td>
                    <td>Categoría</td>
                    <td>Estado</td>
                </tr>
                <xsl:for-each select="biblioteca/libro">
                    <tr>
                        <xsl:attribute name="class">
                            <xsl:choose>
                            <xsl:when test="@prestado='sí'">prestado</xsl:when>
                            <xsl:when test="año &lt; 2000">antiguo</xsl:when>
                            </xsl:choose>
                        </xsl:attribute>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="autor"/></td>
                        <td><xsl:value-of select="año"/></td>
                        <td><xsl:value-of select="categoria"/></td>
                        <xsl:choose>
                            <xsl:when test="@prestado = 'sí'">
                                <td>Prestado</td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td>Disponible</td>
                            </xsl:otherwise>
                        </xsl:choose>
                    </tr>
                </xsl:for-each>
            </table>
            <h2>Autores</h2>
            <ol>
                <xsl:for-each select="biblioteca/libro">
                    <xsl:sort select="autor" order="descending"/>
                    <xsl:if test="año &gt; 1950">
                    <li><xsl:value-of select="autor"/></li>
                    </xsl:if>
                </xsl:for-each>
            </ol>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>