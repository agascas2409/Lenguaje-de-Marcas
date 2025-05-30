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
        <xsl:for-each select="baseDeDatos/tabla">
        <xsl:choose>
        <xsl:when test="@nombre = 'Autores'">
            INSERT INTO <xsl:value-of select="@nombre"/> VALUES
            <xsl:for-each select="datos/fila">
                (<xsl:value-of select="id"/>, '<xsl:value-of select="nombre"/>')<xsl:if test="position() != last()">,</xsl:if>
            </xsl:for-each>;
        </xsl:when>
        <xsl:otherwise>
            INSERT INTO <xsl:value-of select="@nombre"/> VALUES
            <xsl:for-each select="datos/fila">
                (<xsl:value-of select="id"/>,'<xsl:value-of select="titulo"/>', <xsl:value-of select="idAutor"/>)<xsl:if test="position() != last()">,</xsl:if>
            </xsl:for-each>;
        </xsl:otherwise>
        </xsl:choose>
        </xsl:for-each>

    </xsl:template>
</xsl:stylesheet>