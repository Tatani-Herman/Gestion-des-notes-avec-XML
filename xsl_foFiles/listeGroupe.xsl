<?xml version="1.0"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0" >
 
<!-- rule for the whole document: root element is page -->
 
<xsl:template match="/">
 <fo:root>
  <fo:layout-master-set>
 
  <!-- Definition of a single master page. It is simple (no headers etc.) -->
  <fo:simple-page-master 
			 master-name="first" 
			 margin-left="2cm"  margin-right="2cm"
			 margin-bottom="0.5cm" margin-top="0.75cm"
			 page-width="21cm" page-height="29.7cm"
			 >
   <!-- required element body -->
   <fo:region-body/>
  </fo:simple-page-master>
 </fo:layout-master-set>
  
 <!-- Definition of a page sequence -->
 <fo:page-sequence 
master-name="first" master-reference="first">
  <fo:flow 
flow-name="xsl-region-body"
 font-size="14pt" line-height="14pt">
    <xsl:apply-templates/>
  </fo:flow>  
 </fo:page-sequence> 
</fo:root>
</xsl:template>
<fo:block>
				<xsl:text>Liste des groupes d'élèves</xsl:text>
</fo:block>

<fo:block>
			<fo:table>
   <fo:table-column/>
   <fo:table-header>
      <fo:table-row>
         <fo:table-cell>
         Numéro
         </fo:table-cell>
         <fo:table-cell>
         CNE
         </fo:table-cell>
         <fo:table-cell>
         Nom
         </fo:table-cell>
      </fo:table-row>
   </fo:table-header>
   
   <fo:table-body>
    <xsl:for-each select="students/student">
      <fo:table-row>
      <fo:table-cell>
        <fo:block> Numéro</fo:block>
         </fo:table-cell>
         <fo:table-cell>
       <fo:block> <xsl:value-of select="CNE"/></fo:block>
         </fo:table-cell>
         <fo:table-cell>        
          <fo:block> <xsl:value-of select="FirstName"/></fo:block>
           <fo:block> <xsl:value-of select="LastName"/></fo:block>  
         </fo:table-cell>
         
      </fo:table-row>
       </xsl:for-each>
   </fo:table-body>
</fo:table>
</fo:block>


 
</xsl:stylesheet>





