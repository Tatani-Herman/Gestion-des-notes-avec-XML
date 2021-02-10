<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">
  <xsl:template match="/note">

    <xsl:variable name="number" select="sum(matiere) div count(matiere)"/>
    <xsl:if test="$number &gt; 12">

      <fo:root>
        <fo:layout-master-set>
          <fo:simple-page-master margin-right="0.2cm" margin-left="0.2cm" margin-bottom="0.3cm" margin-top="0.1cm" page-width="21cm" page-height="29.7cm" master-name="simpleA4">
            <fo:region-body margin-top="42mm" margin-bottom="3mm"/>
            <fo:region-before region-name="xsl-region-before" extent="25mm" display-align="before" precedence="true"/>

          </fo:simple-page-master>
        </fo:layout-master-set>
        <fo:page-sequence master-reference="simpleA4">

          <fo:static-content flow-name="xsl-region-before" font-size="10pt">
            <fo:block font-size="13pt" margin-top="2mm" space-after="5mm" text-align="center" font-weight="bold">
              UNIVERSITE ABDELMALEK ESSAADI
            </fo:block>
            <fo:block margin-left="8cm">
              <fo:external-graphic src="url(C://xampp/htdocs/Gestion-des-notes-avec-XML/img/arabe1.PNG)"/>
            </fo:block>

            <!-- <fo:table font-size="13pt" margin-left="5cm" border-color="black" border-width="0.4mm" border-style="solid" height="0.7cm" space-after="15mm">
                  <fo:table-column column-width="10cm"/>
                    <fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="center" display-align="center" font-weight="bold">
									<fo:block>ATTESTATION DE REUSSITE</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table> -->
            <fo:block space-after="1cm">
              <fo:external-graphic src="url(C://xampp/htdocs/Gestion-des-notes-avec-XML/img/entatt.PNG)"/>
            </fo:block>
          </fo:static-content>

          <fo:flow flow-name="xsl-region-body" font-size="11pt">
            <fo:block text-align="center" space-after="0.5cm">Le Directeur de l'Ecole Nationale des Sciences Appliquées de Tanger atteste que</fo:block>
            <fo:block text-align="center" space-after="2mm" font-weight="bold">Monsieur <fo:inline font-size="12pt">
              <xsl:value-of select="FirstName"/>
              <xsl:text></xsl:text>
              <xsl:value-of select="LastName"/>
            </fo:inline>
          </fo:block>
          <fo:block text-align="center" space-after="2mm">né le 01 Janvier 2000 à TANGER</fo:block>
          <fo:block text-align="center" space-after="2mm">a été déclaré admis au niveau</fo:block>
          <fo:block text-align="center" space-after="5mm" font-weight="bold">3° Année Génie Informatique</fo:block>
          <fo:block text-align="center">au titre de l'année universitaire 2020/2021</fo:block>
          <fo:block margin-left="0.5cm" space-after="15cm">
            <fo:external-graphic src="url(C://xampp/htdocs/Gestion-des-notes-avec-XML/img/trait.PNG)"/>
          </fo:block>

          <fo:block margin-left="11cm" space-after="2cm">Fait à TANGER, le 14 février 2020</fo:block>
          <fo:block margin-left="12.5cm">Le Directeur</fo:block>
          <fo:block margin-left="5mm" space-after="1cm">N° étudiant: <xsl:value-of select="CNE"/>
          </fo:block>
          <fo:block font-size="9pt">Avis important: il ne peut être délivré qu'un seul exemplaire de cette attestation. Aucun duplicata ne sera fourni</fo:block>

        </fo:flow>

      </fo:page-sequence>
    </fo:root>
  </xsl:if>
</xsl:template>
</xsl:stylesheet>

            