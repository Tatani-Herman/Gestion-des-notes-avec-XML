<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
  <h4>Filière GINF2</h4>
  <table class="table">
    <thead>
    <tr bgcolor="#8adffe">
      <th scope="col">CNE</th>
      <th scope="col">LastName</th>
      <th scope="col">FirstName</th>
      <th scope="col">Notes</th>
    </tr>
    </thead>
    <tbody>
    <xsl:for-each select="notes/note">
      <xsl:if test="matiere[@codeMat='GINF31']">
    <tr>
      <td><xsl:value-of select="CNE"/></td>
      <td><xsl:value-of select="LastName"/></td>
      <td><xsl:value-of select="FirstName"/></td>
      <xsl:choose>
      <xsl:when test="matiere &lt;= 8">
         <td bgcolor="red">
         <xsl:value-of select="matiere"/>
         </td>
      </xsl:when>
      <xsl:when test="matiere &lt; 12">
         <td bgcolor="#FFA500">
         <xsl:value-of select="matiere"/></td>
      </xsl:when>
      <xsl:otherwise>
         <td bgcolor="green"><xsl:value-of select="matiere"/></td>
      </xsl:otherwise>
      </xsl:choose>
    </tr>
    </xsl:if>
    </xsl:for-each>
    </tbody>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

