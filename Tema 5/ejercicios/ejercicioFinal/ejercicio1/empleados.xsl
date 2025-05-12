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
                h1 {
                    color: blue;
                    font-style: bold;
                    text-align: center;
                }
                table{
                    margin: auto;
                }
                table, th, td{
                    border: solid thin black;
                    border-collapse: collapse;
                    padding: 5px;
                }
                table th{
                    font-weight: bolder;
                    background-color: lightgray;
                    text-align: left;
                }
                .color {
                    background-color: lightgreen;
                }
            </style>
        </head>
        <body>
            <h1>Lista de empleados</h1>
            <table>
                <tr>
                    <th>Nombre</th>
                    <th>Puesto</th>
                    <th>Departamento</th>
                    <th>Salario</th>
                    <th>Antigüedad</th>
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