<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
   <HTML>
        <BODY>
         <B> Encontrarás los mejores juegos free to play aquí</B>
         <BR/>
		 <BR/>

         <TABLE>
          <xsl:for-each select="PRINCIPAL/GENERO">
          <xsl:sort order="ascending" select="@NOMBRE"/>
           <TR>
            <TD><B><xsl:value-of select="@NOMBRE"/></B></TD>
			<xsl:for-each select="JUEGO">
			<xsl:sort order="ascending" select="@TITULO"/>
				<TD><xsl:value-of select="@TITULO"/></TD>
			</xsl:for-each>
           </TR>
          </xsl:for-each>
         </TABLE>
        </BODY>
   </HTML>
  </xsl:template>
 </xsl:stylesheet>
