<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.1">
    <xsl:template match="/">
        <html lang="es">
        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Document</title>
        </head>
        <body>
            <h2>Productos de Electrónica</h2>
            <ul>
                <xsl:for-each select="productos/producto">
                    <li>
                        <xsl:value-of select="@tipo"/> :
                        <xsl:value-of select="nombre"/> -
                        <xsl:value-of select="precio"/>€
                    </li>
                </xsl:for-each>
            </ul>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>