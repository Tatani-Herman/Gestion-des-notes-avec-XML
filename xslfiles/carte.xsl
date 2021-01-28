<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:b="http://businesscard.org" 
xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">
	<xsl:template match="b:card">
		<fo:root>
			<fo:layout-master-set>
				<fo:simple-page-master master-name="simple" page-height="5.5cm" page-width="8.6cm" margin-top="0.4cm" margin-bottom="0.4cm" margin-left="0.4cm" margin-right="0.4cm">
					<fo:region-body/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="simple">
				<fo:flow flow-name="xsl-region-body">
					<fo:table>
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="0.3cm"/>
						<fo:table-column column-width="2.5cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="18pt" font-family="sans-serif" line-height="20pt" background-color="#A0D0FF" padding-top="3pt">
										<xsl:value-of select="b:name"/>
									</fo:block>
									<fo:block font-size="14pt" font-family="sans-serif" line-height="16pt" padding-top="7pt">
										<xsl:value-of select="b:title"/>
									</fo:block>
									<fo:block font-size="12pt" font-family="Courier" line-height="16pt" padding-top="7pt">
										<xsl:value-of select="b:email"/>
									</fo:block>
									<xsl:if test="b:phone">
										<fo:block font-size="14pt" font-family="sans-serif" line-height="16pt" padding-top="7pt">
											<xsl:value-of select="b:phone"/>
										</fo:block>
									</xsl:if>
								</fo:table-cell>
								<fo:table-cell/>
								<fo:table-cell>
									<xsl:if test="b:logo">
										<fo:block>
											<fo:external-graphic src="url({b:logo/@uri})" content-width="2.5cm"/>
										</fo:block>
									</xsl:if>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="no" name="Scenario1" userelativepaths="no" externalpreview="no" url="file:///c:/tp_xml2017/tp_demo_GINF2_2017/tp_XSL&#x2D;FO/john_doe.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bWarnings" value="true"/><advancedProp name="bUseDTD" value="false"/></scenario><scenario default="no" name="Scenario2" userelativepaths="yes" externalpreview="no" url="..\tp_XSL&#x2D;FO" htmlbaseurl="" outputurl="" processortype="internal" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator=""/><scenario default="no" name="Scenario3" userelativepaths="yes" externalpreview="no" url="john_doe.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bWarnings" value="true"/><advancedProp name="bUseDTD" value="false"/></scenario><scenario default="no" name="Scenario4" userelativepaths="yes" externalpreview="no" url="john_doe.xml" htmlbaseurl="" outputurl="john_doe.fo" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="custom" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext=".&quot;.fo&quot;" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bWarnings" value="true"/><advancedProp name="bUseDTD" value="false"/></scenario><scenario default="yes" name="Scenario5_cv" userelativepaths="no" externalpreview="no" url="file:///c:/tp_xml2017/tp_demo_GINF2_2017/tp_XSL&#x2D;FO/john_doe.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="bWarnings" value="true"/></scenario></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->