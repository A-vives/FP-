<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">

  <html>
    <body> 
      <h3>COLECCION DE RAQUETAS</h3>
      
      <table border="1">
        <tr>
          <td> MARCA</td>
          <td>MODELO</td>
          <td>PRECIO</td>
        </tr>
        
        <xsl:for-each select="TIENDA/RAQUETA">
        <xsl:sort select="PRECIO" order="descending"/> <!-- ORDENAMOS EL PRECIO EN ORDEN DESCENDENTE-->
          <tr>
            <td><xsl:value-of select="MARCA"/></td>
            <td><xsl:value-of select="MODELO"/></td>
            <td><xsl:value-of select="PRECIO"/></td>
          </tr>
        </xsl:for-each>
        <br/>
        <xsl:for-each select="TIENDA/RAQUETA">
        <tr>
            <td><xsl:value-of select="MARCA"/></td>
            <td><xsl:value-of select="MODELO"/></td>
            <xsl:choose>
              <xsl:when test="PRECIO>150">
                <td><xsl:value-of select="PRECIO"/></td>
              </xsl:when>
              <xsl:otherwise>
                <td><xsl:value-of select="PRECIO"/></td>
              </xsl:otherwise>
            </xsl:choose>
            <td><xsl:value-of select="PRECIO"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body> 
  </html> 

  </xsl:template>
</xsl:stylesheet>
