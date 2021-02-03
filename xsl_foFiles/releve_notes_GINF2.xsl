<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  
xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">
 
<xsl:template match="/">
	<fo:root>
			<fo:layout-master-set>
				<fo:simple-page-master margin-right="0.2cm"
margin-left="0.2cm" margin-bottom="0.2cm"
margin-top="0.1cm" page-width="21cm"
page-height="29.7cm" master-name="simpleA4">
	<fo:region-body margin-top="8.45cm" margin-bottom="1mm" margin-right="0.6cm"/>
	<fo:region-before region-name="xsl-region-before" extent="25mm" display-align="before" precedence="true"/>
			
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="simpleA4">

             <fo:static-content flow-name="xsl-region-before">
					<fo:table table-layout="fixed" width="100%" font-size="10pt" border-color="black" border-width="0.4mm" border-style="solid" height="1.5cm" space-after="2mm">
						<fo:table-column column-width="proportional-column-width(20)"/>
						<fo:table-column column-width="proportional-column-width(45)"/>
						<fo:table-column column-width="proportional-column-width(20)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left"  padding-left="1mm" font-weight="bold">
									<fo:block>
										<xsl:text>Université Abdelmalek Essaâdi </xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" padding-top="8mm">
                                    <fo:block>Année universitaire  2020/2021  <fo:external-graphic src="url(C://xampp/htdocs/Gestion-des-notes-avec-XML/img/arabe2.PNG)"/></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="right" padding-right="1mm" font-weight="bold">
									<fo:block><fo:external-graphic src="url(C://xampp/htdocs/Gestion-des-notes-avec-XML/img/arabe1.PNG)"/>
                                    </fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>

                      <fo:block space-after="2mm">
            <fo:external-graphic src="url(C://xampp/htdocs/Gestion-des-notes-avec-XML/img/arabe0.PNG)" /></fo:block>
            <fo:block space-after="2mm">
            <fo:external-graphic src="url(C://xampp/htdocs/Gestion-des-notes-avec-XML/img/entnote.PNG)" /></fo:block>

                     <fo:block space-after="1.5mm" font-size="11pt" margin-left="0.5cm" font-weight="bold"><xsl:value-of select="notes/note[position()=1]/FirstName"/><xsl:text> </xsl:text> <xsl:value-of select="notes/note[position()=1]/LastName"/></fo:block>
                     
                     <fo:block space-after="1.5mm" margin-left="0.5cm">N° Etudiant: <xsl:value-of select="notes/note[position()=1]/CNE"/> <fo:inline margin-left="2.5cm">  <xsl:value-of select="concat('CNE:',notes/note[position()=1]/CNE)"/></fo:inline></fo:block>
                      <fo:block space-after="1.5mm" margin-left="0.5cm">Né le: 01/01/1999<fo:inline margin-left="2cm">à: Tanger</fo:inline></fo:block>
                      <fo:block space-after="1.5mm" margin-left="0.5cm">Inscrit en<fo:inline margin-left="2mm" font-weight="bold" font-size="13pt">2° Année Génie Informatique</fo:inline></fo:block>
                      <fo:block margin-left="0.5cm">a obtenu les notes suivantes:</fo:block>
                    </fo:static-content>


            	<fo:flow flow-name="xsl-region-body">
                <fo:block>
					<fo:table  border-width="1px" border-style="solid" height="1cm" margin-left="0.4cm">
						            <fo:table-column column-width="10cm"/>
                        <fo:table-column column-width="4cm"/>
                         <fo:table-column column-width="5cm"/>

                         <fo:table-header>
                            <fo:table-row border-width="1px" border-style="solid" height="0.7cm">
                             <fo:table-cell> </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block>Note/Barème</fo:block>
                             </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block>Session</fo:block>
                             </fo:table-cell>
                            </fo:table-row>
                        </fo:table-header>

                        <fo:table-body>
                          <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                           <fo:table-cell><fo:block><xsl:text>GINF31: Programmation Orientée Objet java, XML </xsl:text></fo:block>
                            </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block><xsl:value-of select="notes/note[position()=1]/matiere[position()=1]"/>/20</fo:block>
                             </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block>S1 2020/21</fo:block>
                             </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                           <fo:table-cell><fo:block><xsl:text>GINF32: Assurance controle qualité, Cycle de Vie Logiciel et Méthodes agiles, Maitrise et optimisation des processus </xsl:text></fo:block>
                            </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block><xsl:value-of select="notes/note[position()=1]/matiere[position()=2]"/>/20</fo:block>
                             </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block>S1 2020/21</fo:block>
                             </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                           <fo:table-cell><fo:block><xsl:text>GINF33: Modélisation orientée objet UML, IHM, Cycle de vie logiciel</xsl:text></fo:block>
                            </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block><xsl:value-of select="notes/note[position()=1]/matiere[position()=3]"/>/20</fo:block>
                             </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block>S1 2020/21</fo:block>
                             </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                           <fo:table-cell><fo:block><xsl:text>GINF34: Optimisation et qualité de base de données, Administration et sécurité des bases de données, Base de données NoSQL </xsl:text></fo:block>
                            </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block><xsl:value-of select="notes/note[position()=1]/matiere[position()=4]"/>/20</fo:block>
                             </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block>S1 2020/21</fo:block>
                             </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                           <fo:table-cell><fo:block><xsl:text>GINF35: Administration systèmes, Programmation systèmes </xsl:text></fo:block>
                            </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block><xsl:value-of select="notes/note[position()=1]/matiere[position()=5]"/>/20</fo:block>
                             </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block>S1 2020/21</fo:block>
                             </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                           <fo:table-cell><fo:block><xsl:text>GINF36: Espagnol 2 et Allemand, Anglais professionnel, Technique de communication </xsl:text></fo:block>
                            </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block><xsl:value-of select="notes/note[position()=1]/matiere[position()=6]"/>/20</fo:block>
                             </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block>S1 2020/21</fo:block>
                             </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                           <fo:table-cell><fo:block><xsl:text>GINF41: Introduction à J2EE, programmation en C# </xsl:text></fo:block>
                            </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block><xsl:value-of select="notes/note[position()=1]/matiere[position()=7]"/>/20</fo:block>
                             </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block>S1 2020/21</fo:block>
                             </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                           <fo:table-cell><fo:block><xsl:text>GINF42: Gestion des données complexes, Gestion des données distribuées, Cloud computing et infogérance </xsl:text></fo:block>
                            </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block><xsl:value-of select="notes/note[position()=1]/matiere[position()=8]"/>/20</fo:block>
                             </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block>S1 2020/21</fo:block>
                             </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                           <fo:table-cell><fo:block><xsl:text>GINF43: Traitement de l'image, Vision numérique, Processus stochastique </xsl:text></fo:block>
                            </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block><xsl:value-of select="notes/note[position()=1]/matiere[position()=9]"/>/20</fo:block>
                             </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block>S1 2020/21</fo:block>
                             </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                           <fo:table-cell><fo:block><xsl:text>GINF44: Programmation déclarative, Techniques algorithmiques Avancées </xsl:text></fo:block>
                            </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block><xsl:value-of select="notes/note[position()=1]/matiere[position()=10]"/>/20</fo:block>
                             </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block>S1 2020/21</fo:block>
                             </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                           <fo:table-cell><fo:block><xsl:text>GINF45: Sécurité des systèmes, Crytographie  </xsl:text></fo:block>
                            </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block><xsl:value-of select="notes/note[position()=1]/matiere[position()=11]"/>/20</fo:block>
                             </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block>S1 2020/21</fo:block>
                             </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                           <fo:table-cell><fo:block><xsl:text>GINF46: Economie 2 et comptabilité 2, projet collectif et stage, Management de projet </xsl:text></fo:block>
                            </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block><xsl:value-of select="notes/note[position()=1]/matiere[position()=12]"/>/20</fo:block>
                             </fo:table-cell>
                             <fo:table-cell text-align="center">
                             <fo:block>S1 2020/21</fo:block>
                             </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                        </fo:table>
                            <!--space-after="1.8cm stylus studio"-->
                              <fo:block space-after="4.5cm" space-before="1.5mm" font-weight="bold" margin-left="0.5cm" font-size="11pt">Résultat d'admission session 1:<fo:inline margin-left="6cm"><xsl:variable name="number" select="sum(notes/note[position()=1]/matiere) div count(notes/note[position()=1]/matiere)"/><xsl:value-of select="format-number($number,'#.###')"/>/20
                                
                                <xsl:choose>
                                      <xsl:when test="$number &lt; 12">
                                      <fo:inline margin-left="1.5cm"><xsl:text> REJETE</xsl:text></fo:inline>
                                      </xsl:when>
                                    <xsl:otherwise>
                                    <fo:inline margin-left="1.5cm"><xsl:text>ADMIS</xsl:text></fo:inline>
                                    </xsl:otherwise>
                                    </xsl:choose>
                                </fo:inline>
                               </fo:block>

                               <fo:block margin-left="3.5cm" font-size="11pt" space-after="1mm">Fait à TANGER, le 14 février 2021</fo:block>
                               <fo:block font-size="11pt" space-after="4mm">Le Directeur de l'Ecole Nationale des Sciences Appliquées de Tanger</fo:block>
                               <fo:block font-size="11pt" margin-left="4.7cm" space-after="1mm">Le Directeur</fo:block>
                                <fo:block font-size="9pt" margin-left="2.2cm">Avis important: il ne peut être délivré qu'un seul exemplaire du présent relevé de note. Aucun duplicata ne sera fourni.</fo:block>
                         </fo:block>
                              </fo:flow>
        </fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>