<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<head>
	<title>Practica 5 Equipo 1</title>
	<style type="text/css">
		table{
			padding:10px; 
			color:#154360; 
			border-color: #000000;
		}

		tr.encabezado{
			background:#1A5276; 
			font-size:24px; 
			color:white; 
			text-align:center;

		}

		tr.colsNombre{
			background:#AED6F1; 
			font-size:20px; 
			color:black; 
			text-align:center;
		}
	</style>
</head>	
<body>
 <!-- <h2>Medicamentos</h2> -->
<table border="5px">
	<tr class="encabezado" >
		<th colspan="4">Medicamentos</th>
	</tr>

    <tr  class="colsNombre">
      <th>Nombre</th>
      <th>Via de administración</th>
      <th>Contenido</th>
      <th>Precio</th>
    </tr>
    <xsl:for-each select="farmacia/medicamento">

    	<xsl:sort select="@categoria"/>
	         <tr>
	           <td><xsl:value-of select="nombre"/></td>
	           <td><xsl:value-of select="via_administracion"/></td>
	           <td><xsl:value-of select="contenido"/></td>
	           <td><xsl:value-of select="precio"/></td>
	         </tr>

    </xsl:for-each>
  </table>



   <br /><br /><br />
	<table border="5px">
	<tr class="encabezado" >
		<th colspan="4">Medicamentos</th>
	</tr>

    <tr  class="colsNombre">
      <th>Nombre</th>
      <th>Via de administración</th>
      <th>Contenido</th>
      <th>Precio</th>
    </tr>
    <xsl:for-each select="farmacia/medicamento">
    	<xsl:sort select="@categoria"/>
		    <xsl:if test="precio>100">
		         <tr>
		           <td><xsl:value-of select="nombre"/></td>
		           <td><xsl:value-of select="via_administracion"/></td>
		           <td><xsl:value-of select="contenido"/></td>
		           <td style="color:red; border-color: black;"><xsl:value-of select="precio"/></td>
		         </tr>
		    </xsl:if>
    </xsl:for-each>
  </table>




 <br /><br /><br />
<table border="5px">
	<tr class="encabezado" >
		<th colspan="4">Medicamentos</th>
	</tr>

    <tr  class="colsNombre">
      <th>Nombre</th>
      <th>Via de administración</th>
      <th>Contenido</th>
      <th>Precio</th>
    </tr>
    <xsl:for-each select="farmacia/medicamento">

    <xsl:sort order="ascending" select="contenido" />
    	<xsl:sort select="@categoria"/>
		    <xsl:if test="@categoria='Capsula'">
		         <tr>
		           <td style="color:#FF8C00"><xsl:value-of select="nombre"/></td>
		           <td style="color:#FF8C00"><xsl:value-of select="via_administracion"/></td>
		           <td style="color:#FF8C00"><xsl:value-of select="contenido"/></td>
		           <td style="color:#FF8C00"><xsl:value-of select="precio"/></td>
		         </tr>
		    </xsl:if>
		    <xsl:if test="@categoria= 'Comprimido'">
		         <tr>
		           <td style="color:#933FBA"><xsl:value-of select="nombre"/></td>
		           <td style="color:#933FBA"><xsl:value-of select="via_administracion"/></td>
		           <td style="color:#933FBA"><xsl:value-of select="contenido"/></td>
		           <td style="color:#933FBA"><xsl:value-of select="precio"/></td>
		         </tr>
		    </xsl:if>
    </xsl:for-each>


  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>