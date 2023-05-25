<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<head></head>
    <body>
        <h2>FICHA</h2>
        <table border="1">
        <tr>
            <td>NOMBRE</td>
            <td>EDAD</td>
            <td>DNI</td>
            <td>VEHICULOS</td>
            <td>AUTENTICACION</td>
        </tr>
        <xsl:for-each select="fichas/persona[MARCA='BABOLAT']"> <!-- [MARCA='BABOLAT'] Esto nos muestra solo lo que coincida con lo que haya dentro de las comillas-->
        <xsl:sort select="PRECIO" order="ascending"/> <!-- ordenamos por 'PRECIO' ascendente-->
        
        <tr>
            <td><xsl:value-of select="NOMBRE"></xsl:value-of></td>
            <td><xsl:value-of select="EDAD"></xsl:value-of></td>
            <td><xsl:value-of select="DNI"></xsl:value-of></td>
            <td><xsl:value-of select="VEHICULOS"></xsl:value-of></td>
            <td><xsl:value-of select="AUTENTICACION"></xsl:value-of></td>
        </tr>
        </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>