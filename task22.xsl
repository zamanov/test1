<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:template match="/">
 <xsl:for-each select="//book">
  <xsl:choose>
   <xsl:when test="count(child::author) &gt; 1">
    <xsl:value-of select="child::title"/>*,
   </xsl:when> 
   <xsl:otherwise>
    <xsl:value-of select="child::title"/>,        
   </xsl:otherwise>  
  </xsl:choose>
 </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
