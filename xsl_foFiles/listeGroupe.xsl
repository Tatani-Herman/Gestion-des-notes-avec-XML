<?xml version="1.0"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0" >
 
<!-- rule for the whole document: root element is page -->
 
<xsl:template match="students">
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
   <fo:region-body margin-top="8.45cm" margin-bottom="1mm" margin-right="0.6cm"/>
  </fo:simple-page-master>
 </fo:layout-master-set>
  
 <!-- Definition of a page sequence -->
 <fo:page-sequence 
master-name="first" master-reference="first">
  <fo:flow 
flow-name="xsl-region-body"
 font-size="14pt" line-height="14pt">
    
  
 <fo:block text-align="center" padding-top="8mm">
				<xsl:text >Liste des groupes d'élèves</xsl:text>
</fo:block>
   <xsl:for-each-group select="student" group-by="(position() - 1) idiv 24">
    <fo:table >
                  <fo:table-column column-width="2cm"/>
            <fo:table-column column-width="4cm"/>
            <fo:table-column column-width="10cm"/>
   <fo:table-header>
      <fo:table-row>
         <fo:table-cell>
       <fo:block> Numéro</fo:block> 
         </fo:table-cell>
         <fo:table-cell>
        <fo:block> CNE</fo:block>
         </fo:table-cell>
         <fo:table-cell>
         <fo:block>Nom </fo:block>
         </fo:table-cell>
      </fo:table-row>
   </fo:table-header>
   
   <fo:table-body>
     <xsl:for-each select="student">
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
   </xsl:for-each-group>



</fo:flow>  
 </fo:page-sequence> 
 </fo:root>
 </xsl:template>
</xsl:stylesheet>





