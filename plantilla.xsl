<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
   <HTML>
        <BODY>
         <B> Encontrarás los mejores juegos free to play aquí</B>

         <TABLE>
          <xsl:for-each select="PRINCIPAL/GENERO">
          <xsl:sort order="ascending" select="@NOMBRE"/>
           <TR>
            <TD><B><xsl:value-of select="@NOMBRE"/></B>
            :
	    </TD>
			<TD>
			<xsl:for-each select="JUEGO">
			<xsl:sort order="ascending" select="@TITULO"/>
				<xsl:value-of select="@TITULO"/>
                                <xsl:choose>
					<xsl:when test="position() = last()">
						.
					</xsl:when>
					<xsl:otherwise>
						,
					</xsl:otherwise>
				</xsl:choose>
				
				
			</xsl:for-each>
			</TD>
           </TR>
          </xsl:for-each>
         </TABLE>
        </BODY>
   </HTML>
  </xsl:template>
 </xsl:stylesheet>
