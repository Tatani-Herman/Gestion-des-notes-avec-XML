<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
  <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
 

<xsl:template match="/">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
  <fo:layout-master-set>
    <fo:simple-page-master master-name="simpleA4" page-height="23cm" page-width="40cm" margin-top="1cm" margin-bottom="2cm" margin-left="1cm" margin-right="1cm">
      <fo:region-body/>
    </fo:simple-page-master>
  </fo:layout-master-set>
  <fo:page-sequence master-reference="simpleA4">
    <fo:flow flow-name="xsl-region-body">
      
      <fo:block text-align="center" font-size="13pt" font-weight="bold" space-after="1cm"> EMPLOI DE TEMPS DE LA 4ième SEMAINE AVANT CC DE GINF2</fo:block>
      <fo:block>
      <fo:table border="0.5pt solid black" text-align="center" display-align="center" border-collapse="separate" border-separation="3pt" table-layout="fixed">
        <fo:table-column column-width="2cm" border-style="solid 0.5px black" background-color="silver"/>
        <fo:table-column column-width="6cm" border-style="solid 0.5px black"/>
        <fo:table-column column-width="6cm" border-style="solid 0.5px black"/>
        <fo:table-column column-width="6cm"  border-style="solid 0.5px black"/>
        <fo:table-column column-width="6cm" border-style="solid 0.5px black"/>
        <fo:table-column column-width="6cm" border-style="solid 0.5px black"/>
        <fo:table-column column-width="6cm" border-style="solid 0.5px black"/>
    

         <fo:table-header background-color="silver" display-align="center">        
          <fo:table-row font-weight="bold" height="1.5cm">
          <fo:table-cell>
            <fo:block> </fo:block>
           </fo:table-cell>	
           <fo:table-cell>
              <fo:block>Lundi</fo:block>
              <fo:block>30/11</fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block>Mardi</fo:block>
              <fo:block>01/12</fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block>Mercredi</fo:block>
              <fo:block>02/12</fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block>Jeudi</fo:block>
              <fo:block>03/12</fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block>Vendredi</fo:block>
              <fo:block>04/12</fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block>Samedi</fo:block>
              <fo:block>05/12</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-header>

        <fo:table-body>
          <fo:table-row height="1.5cm">
            <fo:table-cell>
             <fo:block> 08:00</fo:block>
             <fo:block> 08:30</fo:block>
             <fo:block> 09:00</fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>

        <fo:table-row height="2.5cmm">
          <fo:table-cell>
            <fo:block>09:30</fo:block>
            <fo:block>10:00</fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="1cm" width="1.8cm">
            <fo:block text-align="center" display-align="center" space-after="1cm">
               <fo:block background-color="mediumpurple">CM - 09h00 - 10h30</fo:block>
               <fo:block font-weight="bold">MAITRISE ET OPTIMISA</fo:block>
               <fo:block>RAHALI AZOUZI</fo:block>
               <fo:block>ENSEIGNEMENT A DISTA</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="5mm">
            <fo:block text-align="center" display-align="center">
               <fo:block background-color="mediumpurple">CM - 09h00 - 10h30</fo:block>
               <fo:block font-weight="bold">OPTIMISATION ET QUAL</fo:block>
               <fo:block>FISSOUNE</fo:block>
               <fo:block>ENSEIGNEMENT A DISTA</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="5mm">
            <fo:block text-align="center" display-align="center">
               <fo:block background-color="mediumpurple">CM - 09h00 - 10h30</fo:block>
               <fo:block font-weight="bold">PROGRAMMATION ORIENT</fo:block>
               <fo:block>EL HADDAD</fo:block>
               <fo:block>ENSEIGNEMENT A DISTA</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="5mm">
            <fo:block text-align="center" display-align="center">
               <fo:block background-color="mediumpurple">CM - 09h00 - 10h30</fo:block>
               <fo:block font-weight="bold">ADMINISTRATION ET S</fo:block>
               <fo:block>BADIR</fo:block>
               <fo:block>ENSEIGNEMENT A DISTA</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="5mm">
            <fo:block text-align="center" display-align="center">
               <fo:block background-color="mediumpurple">CM - 09h00 - 10h30</fo:block>
               <fo:block font-weight="bold">XML</fo:block>
               <fo:block>LACKAR</fo:block>
               <fo:block>ENSEIGNEMENT A DISTA</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
        </fo:table-row>

        <fo:table-row height="0.5cm">
          <fo:table-cell>
            <fo:block>10:30</fo:block>
            <fo:block>11:00</fo:block>
          </fo:table-cell>
          <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
         </fo:table-row>

         <fo:table-row height="2.5cmm">
          <fo:table-cell>
            <fo:block>11:30</fo:block>
            <fo:block>12:00</fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="1cm" width="1.8cm">
            <fo:block text-align="center" display-align="center" space-after="1cm">
               <fo:block background-color="mediumpurple">CM - 11h00 - 12h30</fo:block>
               <fo:block font-weight="bold">MAITRISE ET OPTIMISA</fo:block>
               <fo:block>RAHALI AZOUZI</fo:block>
               <fo:block>ENSEIGNEMENT A DISTA</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="5mm">
            <fo:block text-align="center" display-align="center">
               <fo:block background-color="lemonchiffon">TD - 11h00 - 12h45</fo:block>
               <fo:block font-weight="bold">OPTIMISATION ET QUAL</fo:block>
               <fo:block>FISSOUNE</fo:block>
               <fo:block>SALLE B14</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="5mm">
            <fo:block text-align="center" display-align="center">
               <fo:block background-color="mediumpurple">CM - 11h00 - 12h30</fo:block>
               <fo:block font-weight="bold">PROGRAMMATION ORIENT</fo:block>
               <fo:block>EL HADDAD</fo:block>
               <fo:block>ENSEIGNEMENT A DISTA</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="5mm">
            <fo:block text-align="center" display-align="center">
               <fo:block background-color="lemonchiffon">TD - 11h00 - 12h45</fo:block>
               <fo:block font-weight="bold">ADMINISTRATION ET S</fo:block>
               <fo:block>BADIR</fo:block>
               <fo:block>SALLE B14</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="5mm">
            <fo:block text-align="center" display-align="center">
               <fo:block background-color="palegreen">TP - 11h00 - 12h30</fo:block>
               <fo:block font-weight="bold">XML</fo:block>
               <fo:block>LACKAR</fo:block>
               <fo:block>SALLE B14</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
        </fo:table-row>

        <fo:table-row height="2cm" background-color="lightgray">
          <fo:table-cell background-color="silver">
            <fo:block>12:30</fo:block>
            <fo:block>13:00</fo:block>
            <fo:block>13:30</fo:block>
            <fo:block>14:00</fo:block>
          </fo:table-cell>
          <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
         </fo:table-row>

         <fo:table-row height="2.5cmm">
          <fo:table-cell>
            <fo:block>14:30</fo:block>
            <fo:block>15:00</fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="1cm" width="1.8cm">
            <fo:block text-align="center" display-align="center" space-after="1cm">
               <fo:block background-color="mediumpurple">CM - 14h00 - 15h30</fo:block>
               <fo:block font-weight="bold">MODELISATION ORIENTE</fo:block>
               <fo:block>EL ALAMI</fo:block>
               <fo:block>ENSEIGNEMENT A DISTA</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="5mm">
            <fo:block text-align="center" display-align="center">
               <fo:block background-color="palegreen">TP - 14h00 - 15h30</fo:block>
               <fo:block font-weight="bold">ADMINISTRATION SYSTE</fo:block>
               <fo:block>AMECHNOUE</fo:block>
               <fo:block>SALLE B14</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="5mm">
            <fo:block text-align="center" display-align="center">
               <fo:block background-color="mediumpurple">CM - 14h00 - 15h30</fo:block>
               <fo:block font-weight="bold">ADMINISTRATION SYSTE</fo:block>
               <fo:block>AMECHNOUE</fo:block>
               <fo:block>ENSEIGNEMENT A DISTA</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell>
            <fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="5mm">
            <fo:block text-align="center" display-align="center">
               <fo:block background-color="mediumpurple">CM - 14h30 - 16h00</fo:block>
               <fo:block font-weight="bold">ANGLAIS</fo:block>
               <fo:block>BOURIGUI</fo:block>
               <fo:block>AMPHI 1</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
        </fo:table-row>

        <fo:table-row height="0.5cm">
          <fo:table-cell>
            <fo:block>15:30</fo:block>
            <fo:block>16:00</fo:block>
          </fo:table-cell>
          <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
         </fo:table-row>

         <fo:table-row height="2.5cmm">
          <fo:table-cell>
            <fo:block>16:30</fo:block>
            <fo:block>17:00</fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="1cm" width="1.8cm">
            <fo:block text-align="center" display-align="center" space-after="1cm">
               <fo:block background-color="mediumpurple">CM - 16h00 - 17h30</fo:block>
               <fo:block font-weight="bold">MODELISATION ORIENTE</fo:block>
               <fo:block>EL ALAMI</fo:block>
               <fo:block>ENSEIGNEMENT A DISTA</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="5mm">
            <fo:block text-align="center" display-align="center">
               <fo:block background-color="palegreen">TP - 16h00 - 17h30</fo:block>
               <fo:block font-weight="bold">ADMINISTRATION SYSTE</fo:block>
               <fo:block>AMECHNOUE</fo:block>
               <fo:block>SALLE B14</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell>
            <fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="5mm">
            <fo:block text-align="center" display-align="center">
               <fo:block background-color="mediumpurple">CM - 16h00 - 17h30</fo:block>
               <fo:block font-weight="bold">ESPAGNOL</fo:block>
               <fo:block>LAMARTI</fo:block>
               <fo:block>AMPHI 2</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell border="solid 0.1mm black" space-after="5mm">
            <fo:block text-align="center" display-align="center">
               <fo:block background-color="mediumpurple">CM - 16h30 - 18h00</fo:block>
               <fo:block font-weight="bold">ANGLAIS</fo:block>
               <fo:block>BOURIGUI</fo:block>
               <fo:block>AMPHI 1</fo:block>
            </fo:block>
           </fo:table-cell>
           <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
        </fo:table-row>

        <fo:table-row height="0.5cm">
          <fo:table-cell>
            <fo:block>17:30</fo:block>
            <fo:block>18:00</fo:block>
          </fo:table-cell>
          <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
           <fo:table-cell>
             <fo:block></fo:block>
           </fo:table-cell>
         </fo:table-row>





        </fo:table-body>
   </fo:table>
 </fo:block>
</fo:flow>
</fo:page-sequence>
</fo:root>
</xsl:template>
</xsl:stylesheet>


