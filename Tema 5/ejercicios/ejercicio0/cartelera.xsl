<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.1">
    <xsl:template match="/">
        <html lang="es">
        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Ejercicio 0</title>
        </head>
        <body>
            <h2>Tabla</h2>
            <table>
                <tr>
                    <td>Titulo</td>
                    <td>Director</td>
                    <td>Año</td>
                    <td>Plataforma</td>
                </tr>
                <xsl:for-each select="cartelera/pelicula">
                    <xsl:if test="anyo &gt;= 2010">
                        <tr>
                            <td><xsl:value-of select="titulo"/> - <xsl:value-of select="titulo/@idioma"/></td>
                            <td><xsl:value-of select="director"/></td>
                            <td><xsl:value-of select="anyo"/></td>
                            <td><xsl:value-of select="@plataforma"/></td>
                        </tr>
                    </xsl:if>
                </xsl:for-each>
            </table>
            <h2>Lista Ordenada</h2>
            <ol>
                <xsl:for-each select="cartelera/pelicula">
                    <xsl:if test="anyo &lt;= 2010">
                        <li>Titulo: <xsl:value-of select="titulo"/>, Director: <xsl:value-of select="director"/>, Año: <xsl:value-of select="anyo"/></li>
                    </xsl:if>
                </xsl:for-each>
            </ol>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>