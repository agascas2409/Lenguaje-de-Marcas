<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.1">
  <xsl:template match="/productos">
    <html lang="es">
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Examen Practica</title>
        <link rel="stylesheet" href="assets/css/estilos.css" type="text/css"/>
      </head>
      <body>
        <h1>Listado de Productos (<xsl:value-of select="empresa/nombre"/>)</h1>
        <table>
          <tr>
            <th>Nombre</th>
            <th>Precio</th>
            <th>Peso</th>
            <th>Descripción</th>
            <th>Ciudades</th>
          </tr> 
          <xsl:for-each select="producto">
            <xsl:sort select="precio" order="ascending"/>
            <xsl:choose>
              <xsl:when test="peso &lt; 1">
                <tr class="filaVerde">
                  <xsl:choose>
                    <xsl:when test="precio/@moneda = 'usd'">
                      <td> <span class="nombreAzul"><xsl:value-of select="nombre"/></span></td>
                      <td> <xsl:value-of select="precio"/> $</td>
                    </xsl:when>
                    <xsl:otherwise>
                      <td> <span class="nombreRojo"><xsl:value-of select="nombre"/></span></td>
                      <td> <xsl:value-of select="precio"/> €</td>
                    </xsl:otherwise>
                  </xsl:choose>
                  <td> <xsl:value-of select="peso"/><xsl:text> </xsl:text><xsl:value-of select="peso/@unidad"/></td>
                  <td> <xsl:value-of select="descripcion"/></td>
                  <td>
                    <ul>
                      <xsl:for-each select="ciudades/ciudad">
                        <xsl:sort select="@paquetes" order="descending"/>
                        <li><xsl:value-of select="."/>(<xsl:value-of select="@paquetes"/>)</li>
                      </xsl:for-each>  
                    </ul>  
                  </td>
                </tr>
              </xsl:when>
              <xsl:when test="peso &gt; 1 and peso &lt; 5">
                <tr class="filaRoja">
                  <xsl:choose>
                    <xsl:when test="precio/@moneda = 'usd'">
                      <td> <span class="nombreAzul"><xsl:value-of select="nombre"/></span></td>
                      <td> <xsl:value-of select="precio"/> $</td>
                    </xsl:when>
                    <xsl:otherwise>
                      <td> <span class="nombreRojo"><xsl:value-of select="nombre"/></span></td>
                      <td> <xsl:value-of select="precio"/> €</td>
                    </xsl:otherwise>
                  </xsl:choose>
                  <td> <xsl:value-of select="peso"/><xsl:text> </xsl:text><xsl:value-of select="peso/@unidad"/></td>
                  <td> <xsl:value-of select="descripcion"/></td>
                  <td>
                    <ul>
                      <xsl:for-each select="ciudades/ciudad">
                        <xsl:sort select="@paquetes" order="descending"/>
                        <li><xsl:value-of select="."/>(<xsl:value-of select="@paquetes"/>)</li>
                      </xsl:for-each>  
                    </ul>  
                  </td>
                </tr>
              </xsl:when>
              <xsl:otherwise>
                <tr class="filaNaranja">
                  <xsl:choose>
                    <xsl:when test="precio/@moneda = 'usd'">
                      <td> <span class="nombreAzul"><xsl:value-of select="nombre"/></span></td>
                      <td> <xsl:value-of select="precio"/> $</td>
                    </xsl:when>
                    <xsl:otherwise>
                      <td> <span class="nombreRojo"><xsl:value-of select="nombre"/></span></td>
                      <td> <xsl:value-of select="precio"/> €</td>
                    </xsl:otherwise>
                  </xsl:choose>
                  <td> <xsl:value-of select="peso"/><xsl:text> </xsl:text><xsl:value-of select="peso/@unidad"/></td>
                  <td> <xsl:value-of select="descripcion"/></td>
                  <td>
                    <ul>
                      <xsl:for-each select="ciudades/ciudad">
                        <xsl:sort select="@paquetes" order="descending"/>
                        <li><xsl:value-of select="."/>(<xsl:value-of select="@paquetes"/>)</li>
                      </xsl:for-each>  
                    </ul>  
                  </td>
                </tr>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:for-each>
        </table>
        <p>Dirección de la empresa: <span><xsl:value-of select="empresa/direccion"/></span></p>
      </body>
    </html>
    
  </xsl:template>
</xsl:stylesheet>
