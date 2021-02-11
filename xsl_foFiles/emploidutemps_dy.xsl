<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
  <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
  <!-- ========================= -->
  <!--       root element        -->
  <!-- ========================= -->

<xsl:template match="emploidutemps">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
  <fo:layout-master-set>
    <fo:simple-page-master master-name="simpleA4" page-height="21cm" page-width="29.7cm" margin-top="2cm" margin-bottom="2cm" margin-left="2cm" margin-right="2cm">
      <fo:region-body/>
    </fo:simple-page-master>
  </fo:layout-master-set>
  <fo:page-sequence master-reference="simpleA4">
    <fo:flow flow-name="xsl-region-body">
      
      <fo:block>
      <fo:table border="0.5pt solid black" text-align="center" border-spacing="3pt" table-layout="fixed">
        <fo:table-column column-width="80px"/>
        <fo:table-column column-width="62px" />
        <fo:table-column column-width="62px"/>
        <fo:table-column column-width="62px" />
        <fo:table-column column-width="62px"/>
        <fo:table-column column-width="62px" />
        <fo:table-column column-width="62px"/>
        <fo:table-column column-width="62px" />
        <fo:table-column column-width="62px"/>
        <fo:table-column column-width="62px" />
        <fo:table-column column-width="62px"/>
		
		<!-- HEADER -->
        <fo:table-header>        
          <fo:table-row>
            <fo:table-cell padding="6pt" border="1pt solid blue" background-color="white" number-columns-spanned="11">
              <fo:block text-align="center" font-weight="bold">
             <xsl:value-of select="//filiere/text()" />    Emploi du temps : <xsl:value-of select="//semaine/text()" />
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
       </fo:table-header>
       
       <!-- BODY -->
        <fo:table-body>
          <!-- 1er ligne -->
          <fo:table-row>
            <fo:table-cell padding="6pt" border="1pt solid blue" background-color="white" number-rows-spanned="1">
              <fo:block text-align="center" font-weight="bold">
					Heure-Jours
             </fo:block>
           </fo:table-cell>
          <fo:table-cell padding="6pt" border="0.5pt solid black" number-columns-spanned="2" background-color="silver">
            <fo:block> Lundi </fo:block>
          </fo:table-cell>
          <fo:table-cell padding="6pt" border="0.5pt solid black" number-columns-spanned="2" background-color="silver">
            <fo:block> Mardi </fo:block>
          </fo:table-cell>
          <fo:table-cell padding="6pt" border="0.5pt solid black" number-columns-spanned="2" background-color="silver">
            <fo:block> Mercredi </fo:block>
          </fo:table-cell>
          <fo:table-cell padding="6pt" border="0.5pt solid black" number-columns-spanned="2" background-color="silver">
            <fo:block> Jeudi </fo:block>
          </fo:table-cell>
          <fo:table-cell padding="6pt" border="0.5pt solid black" number-columns-spanned="2" background-color="silver">
            <fo:block> Vendredi </fo:block>
          </fo:table-cell>
        </fo:table-row>
        <fo:table-row height="30mm">
          <xsl:call-template name="heure1">
           <xsl:with-param name="hour">8h30-10h30</xsl:with-param>  
          </xsl:call-template>
        </fo:table-row>
        <fo:table-row height="30mm">
         <xsl:call-template name="heure2">
           <xsl:with-param name="hour">10h45-12h45</xsl:with-param>  
          </xsl:call-template>
        </fo:table-row>
        <fo:table-row height="10mm" >
         <fo:table-cell padding="6pt" border="0.5pt solid black" number-columns-spanned="11">
            <fo:block> Pause </fo:block>
          </fo:table-cell>
        </fo:table-row>
        <fo:table-row height="30mm">
          <xsl:call-template name="heure3">
           <xsl:with-param name="hour">14h-15h30</xsl:with-param>  
          </xsl:call-template>
        </fo:table-row>
        <fo:table-row height="30mm">
          <xsl:call-template name="heure4">
           <xsl:with-param name="hour">15h45-17h15</xsl:with-param>  
          </xsl:call-template>
        </fo:table-row>
        <!-- 3em ligne -->
        
     </fo:table-body>
   </fo:table>
 </fo:block>
</fo:flow>
</fo:page-sequence>
</fo:root>
</xsl:template>

<xsl:template name="heure1">
 <xsl:param name="hour" /> 
   <fo:table-cell padding="6pt" border="1pt solid blue" background-color="silver" number-rows-spanned="1">
     <fo:block> <xsl:value-of select="$hour"/> </fo:block>   
   </fo:table-cell>

 <xsl:for-each select="*/heure[@debut=$hour]">
   <xsl:for-each select="./*/cours">
    <fo:table-cell padding="6pt" border="0.5pt solid black" number-rows-spanned="{@heure div 2}" number-columns-spanned="2" vertical-align="bottom">
      <xsl:variable name="color" select="'white'"/>
      <xsl:choose>
        <xsl:when test="type='CM'"><xsl:variable name="color" select="'mediumpurple'"/>
         <fo:block vertical-align="bottom" background-color="{$color}"> 
        <xsl:value-of select="type"/> 
      </fo:block>
        </xsl:when>
        <xsl:when test="type='TD'"><xsl:variable name="color" select="'yellow'"/>
         <fo:block vertical-align="bottom" background-color="{$color}"> 
        <xsl:value-of select="type"/> 
      </fo:block>
        </xsl:when>
        <xsl:when test="type='TP'"><xsl:variable name="color" select="'green'"/>
         <fo:block vertical-align="bottom" background-color="{$color}"> 
        <xsl:value-of select="type"/> 
      </fo:block>
        </xsl:when>
     </xsl:choose> 
     
      <fo:block vertical-align="bottom"> 
        <xsl:value-of select="matiere"/> 
      </fo:block>
      <fo:block vertical-align="bottom"> 
        <xsl:value-of select="professeur"/> 
      </fo:block>
      <fo:block vertical-align="bottom"> 
        <xsl:value-of select="salle"/> 
      </fo:block>
    </fo:table-cell>
  </xsl:for-each >
 </xsl:for-each>   
</xsl:template>
<xsl:template name="heure2">
 <xsl:param name="hour" /> 
   <fo:table-cell padding="6pt" border="1pt solid blue" background-color="silver" number-rows-spanned="1">
     <fo:block> <xsl:value-of select="$hour"/> </fo:block>   
   </fo:table-cell>

 <xsl:for-each select="*/heure[@debut=$hour]">
   <xsl:for-each select="./*/cours">
    <fo:table-cell padding="6pt" border="0.5pt solid black" number-rows-spanned="{@heure div 2}" number-columns-spanned="2" vertical-align="bottom">
      <xsl:variable name="color" select="'white'"/>
      <xsl:choose>
        <xsl:when test="type='CM'"><xsl:variable name="color" select="'mediumpurple'"/>
         <fo:block vertical-align="bottom" background-color="{$color}"> 
        <xsl:value-of select="type"/> 
      </fo:block>
        </xsl:when>
        <xsl:when test="type='TD'"><xsl:variable name="color" select="'yellow'"/>
         <fo:block vertical-align="bottom" background-color="{$color}"> 
        <xsl:value-of select="type"/> 
      </fo:block>
        </xsl:when>
        <xsl:when test="type='TP'"><xsl:variable name="color" select="'green'"/>
         <fo:block vertical-align="bottom" background-color="{$color}"> 
        <xsl:value-of select="type"/> 
      </fo:block>
        </xsl:when>
     </xsl:choose> 
      <fo:block vertical-align="bottom"> 
        <xsl:value-of select="matiere"/> 
      </fo:block>
      <fo:block vertical-align="bottom"> 
        <xsl:value-of select="professeur"/> 
      </fo:block>
      <fo:block vertical-align="bottom"> 
        <xsl:value-of select="salle"/> 
      </fo:block>
    </fo:table-cell>
  </xsl:for-each >
 </xsl:for-each>   
</xsl:template>
<xsl:template name="heure3">
 <xsl:param name="hour" /> 
   <fo:table-cell padding="6pt" border="1pt solid blue" background-color="silver" number-rows-spanned="1">
     <fo:block> <xsl:value-of select="$hour"/> </fo:block>   
   </fo:table-cell>

 <xsl:for-each select="*/heure[@debut=$hour]">
   <xsl:for-each select="./*/cours">
    <fo:table-cell padding="6pt" border="0.5pt solid black" number-rows-spanned="{@heure div 2}" number-columns-spanned="2" vertical-align="bottom">
       <xsl:variable name="color" select="'white'"/>
      <xsl:choose>
        <xsl:when test="type='CM'"><xsl:variable name="color" select="'mediumpurple'"/>
         <fo:block vertical-align="bottom" background-color="{$color}"> 
        <xsl:value-of select="type"/> 
      </fo:block>
        </xsl:when>
        <xsl:when test="type='TD'"><xsl:variable name="color" select="'yellow'"/>
         <fo:block vertical-align="bottom" background-color="{$color}"> 
        <xsl:value-of select="type"/> 
      </fo:block>
        </xsl:when>
        <xsl:when test="type='TP'"><xsl:variable name="color" select="'green'"/>
         <fo:block vertical-align="bottom" background-color="{$color}"> 
        <xsl:value-of select="type"/> 
      </fo:block>
        </xsl:when>
     </xsl:choose> 
      <fo:block vertical-align="bottom"> 
        <xsl:value-of select="matiere"/> 
      </fo:block>
      <fo:block vertical-align="bottom"> 
        <xsl:value-of select="professeur"/> 
      </fo:block>
      <fo:block vertical-align="bottom"> 
        <xsl:value-of select="salle"/> 
      </fo:block>
    </fo:table-cell>
  </xsl:for-each >
 </xsl:for-each>   
</xsl:template>
<xsl:template name="heure4">
 <xsl:param name="hour" /> 
   <fo:table-cell padding="6pt" border="1pt solid blue" background-color="silver" number-rows-spanned="1">
     <fo:block> <xsl:value-of select="$hour"/> </fo:block>   
   </fo:table-cell>

 <xsl:for-each select="*/heure[@debut=$hour]">
   <xsl:for-each select="./*/cours">
    <fo:table-cell padding="6pt" border="0.5pt solid black" number-rows-spanned="{@heure div 2}" number-columns-spanned="2" vertical-align="bottom">
      <xsl:variable name="color" select="'white'"/>
      <xsl:choose>
        <xsl:when test="type='CM'"><xsl:variable name="color" select="'mediumpurple'"/>
         <fo:block vertical-align="bottom" background-color="{$color}"> 
        <xsl:value-of select="type"/> 
      </fo:block>
        </xsl:when>
        <xsl:when test="type='TD'"><xsl:variable name="color" select="'yellow'"/>
         <fo:block vertical-align="bottom" background-color="{$color}"> 
        <xsl:value-of select="type"/> 
      </fo:block>
        </xsl:when>
        <xsl:when test="type='TP'"><xsl:variable name="color" select="'green'"/>
         <fo:block vertical-align="bottom" background-color="{$color}"> 
        <xsl:value-of select="type"/> 
      </fo:block>
        </xsl:when>
     </xsl:choose> 
      <fo:block vertical-align="bottom"> 
        <xsl:value-of select="matiere"/> 
      </fo:block>
      <fo:block vertical-align="bottom"> 
        <xsl:value-of select="professeur"/> 
      </fo:block>
      <fo:block vertical-align="bottom"> 
        <xsl:value-of select="salle"/> 
      </fo:block>
    </fo:table-cell>
  </xsl:for-each >
 </xsl:for-each>   
</xsl:template>
</xsl:stylesheet>