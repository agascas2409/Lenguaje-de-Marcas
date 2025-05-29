<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.1">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/">
        
        <xsl:for-each select="baseDeDatos/tabla">
            CREATE TABLE <xsl:value-of select="@nombre"/>{
                <xsl:for-each select="campo">
                    <xsl:value-of select="@nombre"/><xsl:text> </xsl:text><xsl:value-of select="@tipo"/><xsl:if test="@clavePrimaria"> PRYMARY KEY</xsl:if><xsl:if test="@claveForanea"> REFERENCES <xsl:value-of select="@referencia"/></xsl:if><xsl:if test="position() != last()">,</xsl:if>
                </xsl:for-each>
            };
        </xsl:for-each>
        <xsl:for-each select="baseDeDatos/tabla/datos/fila">
            INSERT INTO <xsl:value-of select="baseDeDatos/tabla/@nombre"/>
            VALUES (<xsl:value-of select="id"/>,'<xsl:value-of select="nombre"/>')
        </xsl:for-each>

    </xsl:template>
</xsl:stylesheet>