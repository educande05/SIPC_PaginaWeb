<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
   <HTML>
        <BODY>
         <B> Encontrarás los mejores juegos free to play aquí</B>
	<Select name = clase "status" = "required">

&lt;xsl:apply-templates select="document('Free_to_play.xml')//xs:simpleType[@name = 'status']/descendant::xs:enumeration" mode="generate-options">

& Lt; xsl: con-param name = "seleccionado" select = "status @" />

& Lt; / xsl: apply-templates>

</ Select>
         <TABLE>
          <xsl:for-each select="PRINCIPAL/NOMBRE">
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
