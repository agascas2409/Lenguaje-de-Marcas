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
                    <xsl:if test="precio &lt; 900 and disco/@tipo = 'ssd'">
                        <tr>
                            <td><xsl:value-of select="peso"/></td>
                            <td><xsl:value-of select="ram"/></td>
                            <td><xsl:value-of select="disco"/></td>
                            <td><xsl:value-of select="precio"/></td>
                        </tr>
                    </xsl:if>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>