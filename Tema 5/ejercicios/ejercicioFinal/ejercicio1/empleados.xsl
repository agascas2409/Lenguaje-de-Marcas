<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.1">
    <xsl:template match="/">
        <html lang="es">
        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Empleados</title>
            <style>
                .color {
                    color:blue;
                }
            </style>
        </head>
        <body>
            <table>
                <tr>
                    <td>Nombre</td>
                    <td>Puesto</td>
                    <td>Departamento</td>
                    <td>Salario</td>
                    <td>Antigüedad</td>
                </tr>
                <xsl:for-each select="empresa/empleado">
                    <xsl:sort select="nombre" order="ascending"/>
                    <xsl:sort select="salario" order="ascending"/>
                    <xsl:choose>
                        <xsl:when test="antiguedad &gt; 5 and antiguedad &lt;= 10">
                            <tr class="color">
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="puesto"/></td>
                                <td><xsl:value-of select="departamento"/></td>
                                <td><xsl:value-of select="salario"/></td>
                                <td><xsl:value-of select="antiguedad"/></td>
                            </tr>
                        </xsl:when>
                        <xsl:otherwise>
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="puesto"/></td>
                                <td><xsl:value-of select="departamento"/></td>
                                <td><xsl:value-of select="salario"/></td>
                                <td><xsl:value-of select="antiguedad"/></td>
                            </tr>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>