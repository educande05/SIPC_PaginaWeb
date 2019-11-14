<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>

  <head>
    <title>Arduino_Raspberry</title>
  </head>


  <body>
    <h1 style="color:red;"><b>Productos Arduino</b></h1>
    <xsl:for-each select="PRINCIPAL/ARDUINO">
      <p>
      <b><xsl:value-of select="@NOMBRE"/></b>
      </p> 
    </xsl:for-each>

    <h1 style="color:blue;"><b>Productos Arduino_Raspberry</b></h1>
    <xsl:for-each select="PRINCIPAL/RASPBERRY">
      <p>
      <b><xsl:value-of select="@NOMBRE"/></b>
      </p>
    </xsl:for-each>
  </body>

  </html>
</xsl:template>

</xsl:stylesheet>