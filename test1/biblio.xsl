<?xml version="1.0" encoding="UTF-8"?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Sun Jan 19 17:24:58 CET 2020 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<body>
		
<h3>liste de Empruntes de Livres</h3>
		<table border="2" >
		<tr>
		    <td>CODE</td><td>NOM</td><td>PRENOM</td>
		</tr>
		
  <xsl:for-each select="biblio/etudiant">
			
  <tr>
			
    <td><xsl:value-of select="@code"/></td>
			
    <td><xsl:value-of select="@nom"/></td>
			
    <td><xsl:value-of select="@prenom"/></td>
			
  </tr> 
			
  <table border="5" >
			
    <tr><td>ID</td><td>TITRE</td><td>DATE</td><td>RENDU</td></tr>
			
    <xsl:for-each select="livre[@rendu='non']">
			
    <tr>
					<td><xsl:value-of select="@id"/></td>
					<td><xsl:value-of select="@titre"/></td>	
					<td><xsl:value-of select="@datePret"/></td>	
					<td><xsl:value-of select="@rendu"/></td>				
    
			
    </tr>
			
    </xsl:for-each>
			
   <tr colspan="3">
			
   <td colspan="3">NOMBRE DES LIVRES EMPRUNTES ::</td>
			
   <td><xsl:value-of select="count(livre)"/></td>
			
  </tr>
			
  <tr>
			
   <td colspan="3"> NOMBRE DES LIVRES EMPRUNTES NON RENDUS ::</td>
			
   <td><xsl:value-of select="count(livre[@rendu='non'])"/></td>
			
  </tr>
			
  </table>

		
  </xsl:for-each>
		
  </table>
		</body>
	</html>
	</xsl:template>
</xsl:stylesheet>


