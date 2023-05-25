<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">

<html>
<head>
 <link href="style.css" rel="stylesheet">
 </link></head>
<body>
      
      <h2>Farmacias</h2>
      <xsl:for-each select="response/row/row"> 
      <div class="container">
        <img src="tenor.gif" alt=""/>
        <div clas="items">
          <div class="item"><strong><xsl:value-of select="nom"/></strong></div>
          <div class="item"><xsl:value-of select="adreca"/></div>
          <div class="item"><xsl:value-of select="municipi"/></div>
        
        </div>

      </div>
      </xsl:for-each>
    </body>
</html>
  
  </xsl:template>
</xsl:stylesheet>