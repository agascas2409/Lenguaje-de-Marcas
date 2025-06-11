<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.1">
  <xsl:template match="/cursos">
    <html lang="es">
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Examen XSL</title>
        <link rel="stylesheet" href="assets/css/estilos.css" type="text/css"/>
      </head>
      <body>
        <h1><xsl:value-of select="academia/nombre"/></h1>
        <table>
          <tr>
            <th>Nombre del curso</th>
            <th>Duración</th>
            <th>Descripción</th>
            <th>Alumnos matriculados</th>
            <th>Sedes</th>
          </tr>
          <xsl:for-each select="curso">
              <!-- Ordenamos por numero de alumnos matriculasdos en los cursos -->
              <xsl:sort select="matriculados" data-type="number" order="descending"/>
              <xsl:choose>
                <!-- Elegimos esta opcion si el numero de alumnos matriculados es mayor o igual a 25 -->
                <xsl:when test="matriculados &gt;= 25">
                <tr>
                  <td><span class="nombreVerde"><xsl:value-of select="nombre"/></span></td>
                  <xsl:choose>
                    <!-- Elegimos que si es d añadimos la palabra dias en duracion y coloreamos la descripcion-->
                    <xsl:when test="nombre/@unidad = 'd'">
                      <td><xsl:value-of select="nombre/@duracion"/> dias</td>
                      <td class="descripcionAmarillo"><xsl:value-of select="descripcion"/></td>
                    </xsl:when>
                    <!-- Elegimos que si no es d añadimos la palabra horas y no coloreamos descripcion-->
                    <xsl:otherwise>
                      <td><xsl:value-of select="nombre/@duracion"/> horas</td>
                      <td><xsl:value-of select="descripcion"/></td>
                    </xsl:otherwise>
                  </xsl:choose>
                  <td><xsl:value-of select="matriculados"/></td>
                  <td>
                    <ul>
                      <xsl:for-each select="sedes/sede">
                        <!-- Recorremos cada sede, ordenandolas por numero de plazas -->
                        <xsl:sort select="@plazas" order="descending" data-type="number"/>
                        <li><xsl:value-of select="nombre"/> (<xsl:value-of select="@plazas"/>)</li>
                      </xsl:for-each>  
                    </ul>  
                  </td>
                </tr>
                </xsl:when>
              <!-- Elegimos esta opcion si el numero de alumnos matriculados es menor a 25 y mayor a 10 -->
                <xsl:when test="matriculados &lt; 25 and matriculados &gt; 10">
                <tr>
                  <td><span class="nombreAmarillo"><xsl:value-of select="nombre"/></span></td>
                  <xsl:choose>
                    <!-- Elegimos que si es d añadimos la palabra dias en duracion y coloreamos la descripcion-->
                    <xsl:when test="nombre/@unidad = 'd'">
                      <td><xsl:value-of select="nombre/@duracion"/> dias</td>
                      <td class="descripcionAmarillo"><xsl:value-of select="descripcion"/></td>
                    </xsl:when>
                    <!-- Elegimos que si no es d añadimos la palabra horas y no coloreamos descripcion-->
                    <xsl:otherwise>
                      <td><xsl:value-of select="nombre/@duracion"/> horas</td>
                      <td><xsl:value-of select="descripcion"/></td>
                    </xsl:otherwise>
                  </xsl:choose>
                  <td><xsl:value-of select="matriculados"/></td>
                  <td>
                    <ul>
                      <xsl:for-each select="sedes/sede">
                        <!-- Recorremos cada sede, ordenandolas por numero de plazas -->
                        <xsl:sort select="@plazas" order="descending"/>
                        <li><xsl:value-of select="nombre"/> (<xsl:value-of select="@plazas"/>)</li>
                      </xsl:for-each>  
                    </ul>  
                  </td>
                </tr>
                </xsl:when>
              <!-- Elegimos esta opcion si el numero de alumnos matriculados es menor a 10 -->
                <xsl:otherwise>
                <tr>
                  <td><span class="nombreRojo"><xsl:value-of select="nombre"/></span></td>
                  <xsl:choose>
                    <!-- Elegimos que si es d añadimos la palabra dias en duracion y coloreamos la descripcion-->
                    <xsl:when test="nombre/@unidad = 'd'">
                      <td><xsl:value-of select="nombre/@duracion"/> dias</td>
                      <td class="descripcionAmarillo"><xsl:value-of select="descripcion"/></td>
                    </xsl:when>
                    <!-- Elegimos que si no es d añadimos la palabra horas y no coloreamos descripcion-->
                    <xsl:otherwise>
                      <td><xsl:value-of select="nombre/@duracion"/> horas</td>
                      <td><xsl:value-of select="descripcion"/></td>
                    </xsl:otherwise>
                  </xsl:choose>
                  <td><xsl:value-of select="matriculados"/></td>
                  <td>
                    <ul>
                      <xsl:for-each select="sedes/sede">
                        <!-- Recorremos cada sede, ordenandolas por numero de plazas -->
                        <xsl:sort select="@plazas" order="descending"/>
                        <li><xsl:value-of select="nombre"/> (<xsl:value-of select="@plazas"/>)</li>
                      </xsl:for-each>  
                    </ul>  
                  </td>
                </tr>
                </xsl:otherwise>
              </xsl:choose>
          </xsl:for-each>  
        </table>
        <p>Dirección: <xsl:value-of select="academia/direccion"/></p>
      </body>
    </html>
    
  </xsl:template>
</xsl:stylesheet>
