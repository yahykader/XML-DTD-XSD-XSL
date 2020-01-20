<?xml version="1.0" encoding="UTF-8"?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Mon Jan 20 12:19:49 CET 2020 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>

	<xsl:template match="/">
	<html>
		<body>
		   <xsl:for-each select="operateur/client">
		     <h3><xsl:value-of select="@nom"/></h3>
		      <table border="2">
		        <tr><td>NUM ABON</td><td> TYPE ABON</td><td>DATE ABON</td><td>MONTANT ABON</td></tr>
		        <xsl:for-each select="abonnement">
		        <tr>
			        <td><xsl:value-of select="@num"/></td>
			        <td><xsl:value-of select="@type"/></td>
			        <td><xsl:value-of select="@dateAb"/></td>
			        <td><xsl:value-of select="sum(facture/@montant)"/></td>
		        </tr>
		        </xsl:for-each>
		      </table>
		   </xsl:for-each>
		</body>
	</html>
	</xsl:template>
</xsl:stylesheet>


