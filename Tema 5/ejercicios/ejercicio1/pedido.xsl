<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.1">
    <xsl:template match="/">
        <html lang="es">
        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Ejercicio 1</title>
        </head>
        <body>
            <h2>Portatiles</h2>
            <table>
                <tr>
                    <td>Peso</td>
                    <td>RAM</td>
                    <td>Disco</td>
                    <td>Precio</td>
                </tr>
                <xsl:for-each select="pedido/portatiles/portatil">
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
            <h2>Tablets</h2>
            <table>
                <tr>
                    <td>Plataforma</td>
                    <td>RAM</td>
                    <td>Batería</td>
                </tr>
                <xsl:for-each select="pedido/tablets/tablet">
                    <xsl:if test="caracteristicas/memoria &gt;= 2 and caracteristicas/tamanio &gt;= 7">
                        <tr>
                            <td><xsl:value-of select="plataforma"/></td>
                            <td><xsl:value-of select="caracteristicas/memoria"/></td>
                            <td><xsl:value-of select="caracteristicas/bateria"/></td>
                        </tr>
                    </xsl:if>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>