<?xml version="1.0"  encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
<xsl:template match="/">
  <html>
  <body>

    <table border="1">
      <tr bgcolor="#6495ED">
        <th>Element</th>
        <th>Job</th>
		<th>Company</th>
		<th>Salary</th>
		<th>City</th>

      </tr>
      <xsl:for-each select="items_list/work">
        <tr>
			<td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="job"/></td>
			<td>
                <xsl:value-of select="company_name"/></td>
			<td>
                <xsl:value-of select="salary"/>
                <br/>
                <xsl:value-of select="salary/@currency"/>
            </td>
			<td>
                <xsl:value-of select="city"/>
                <br/>
                <xsl:value-of select="city/@country"/>
            </td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>