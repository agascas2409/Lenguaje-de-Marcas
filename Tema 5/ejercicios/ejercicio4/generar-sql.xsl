<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.1">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/">
        
        CREATE TABLE Autores{
            id  INT PRIMARY KEY,
            nombre  VARCAHR(255)
        };

        CREATE TABLE Libros{
            id  INT PRIMARY KEY,
            titulo  Varchar(255),
            idAutor INT REFERENCES Autores(id)
        };

    </xsl:template>
</xsl:stylesheet>