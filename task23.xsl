<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:template match="/">
 <xsl:for-each select="//book">
  <xsl:if test="child::price &gt; 30">
   <xsl:value-of select="child::title"/>&gt;30,
  </xsl:if>
  <xsl:if test="child::price = 30">
   <xsl:value-of select="child::title"/>=30,
  </xsl:if>
  <xsl:if test="child::price &lt; 30">
   <xsl:value-of select="child::title"/>&lt;30,
  </xsl:if>
 </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
