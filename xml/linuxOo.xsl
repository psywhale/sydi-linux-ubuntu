<?xml version='1.0' encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0"><xsl:output method="html"/>
<xsl:template match="/">

<office:document-content xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0" xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0" xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0" xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0" xmlns:number="urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0" xmlns:svg="http://www.w3.org/2000/svg" xmlns:chart="urn:oasis:names:tc:opendocument:xmlns:chart:1.0" xmlns:dr3d="urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0" xmlns:math="http://www.w3.org/1998/Math/MathML" xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0" xmlns:script="urn:oasis:names:tc:opendocument:xmlns:script:1.0" xmlns:ooo="http://openoffice.org/2004/office" xmlns:ooow="http://openoffice.org/2004/writer" xmlns:oooc="http://openoffice.org/2004/calc" xmlns:dom="http://www.w3.org/2001/xml-events" xmlns:xforms="http://www.w3.org/2002/xforms" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" office:version="1.0">
<office:scripts /> 
<office:font-face-decls>
	<style:font-face style:name="Tahoma1" svg:font-family="Tahoma" /> 
	<style:font-face style:name="MS Mincho" svg:font-family="'MS Mincho'" style:font-family-generic="modern" /> 
	<style:font-face style:name="Arial Unicode MS" svg:font-family="'Arial Unicode MS'" style:font-pitch="variable" /> 
	<style:font-face style:name="MS Mincho1" svg:font-family="'MS Mincho'" style:font-pitch="variable" /> 
	<style:font-face style:name="Tahoma" svg:font-family="Tahoma" style:font-pitch="variable" /> 
	<style:font-face style:name="Times New Roman" svg:font-family="'Times New Roman'" style:font-family-generic="roman" style:font-pitch="variable" /> 
	<style:font-face style:name="Arial" svg:font-family="Arial" style:font-family-generic="swiss" style:font-pitch="variable" /> 
	<style:font-face style:name="Trebuchet MS" svg:font-family="'Trebuchet MS'" style:font-family-generic="swiss" style:font-pitch="variable" /> 
</office:font-face-decls>
 <office:automatic-styles>
  <style:style style:name="Portage" style:family="table">
  <style:table-properties style:width="15.431cm" table:align="left" style:writing-mode="lr-tb" /> 
  </style:style>
  <style:style style:name="Portage.A" style:family="table-column">
  <style:table-column-properties style:column-width="3.905cm" /> 
  </style:style>
  <style:style style:name="Portage.D" style:family="table-column">
  <style:table-column-properties style:column-width="3.715cm" /> 
  </style:style>
  <style:style style:name="Portage.1" style:family="table-row">
  <style:table-row-properties style:keep-together="true" /> 
  </style:style>
  <style:style style:name="Portage.A1" style:family="table-cell">
  <style:table-cell-properties style:vertical-align="top" fo:padding-left="0.191cm" fo:padding-right="0.191cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none" style:writing-mode="lr-tb" /> 
  </style:style>
  <style:style style:name="Services" style:family="table">
  <style:table-properties style:width="15.431cm" table:align="left" style:writing-mode="lr-tb" /> 
  </style:style>
  <style:style style:name="Services.A" style:family="table-column">
  <style:table-column-properties style:column-width="3.905cm" /> 
  </style:style>
  <style:style style:name="Services.D" style:family="table-column">
  <style:table-column-properties style:column-width="3.715cm" /> 
  </style:style>
  <style:style style:name="Services.1" style:family="table-row">
  <style:table-row-properties style:keep-together="true" /> 
  </style:style>
  <style:style style:name="Services.A1" style:family="table-cell">
  <style:table-cell-properties style:vertical-align="top" fo:padding-left="0.191cm" fo:padding-right="0.191cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none" style:writing-mode="lr-tb" /> 
  </style:style>
  <style:style style:name="P1" style:family="paragraph" style:parent-style-name="Title" style:master-page-name="Standard" /> 
  <style:style style:name="P2" style:family="paragraph" style:parent-style-name="Text_20_body">
  <style:text-properties fo:font-weight="bold" style:font-weight-asian="bold" /> 
  </style:style>
  <style:style style:name="P3" style:family="paragraph" style:parent-style-name="Contents_20_1">
  <style:paragraph-properties>
  <style:tab-stops>
  <style:tab-stop style:position="15.24cm" style:type="right" style:leader-style="dotted" style:leader-text="." /> 
  </style:tab-stops>
  </style:paragraph-properties>
  </style:style>
  <style:style style:name="P4" style:family="paragraph" style:parent-style-name="Contents_20_2">
  <style:paragraph-properties>
  <style:tab-stops>
  <style:tab-stop style:position="14.817cm" style:type="right" style:leader-style="dotted" style:leader-text="." /> 
  </style:tab-stops>
  </style:paragraph-properties>
  </style:style>
  <style:style style:name="P5" style:family="paragraph" style:parent-style-name="Text_20_body">
  <style:paragraph-properties>
  <style:tab-stops>
  <style:tab-stop style:position="0.847cm" /> 
  <style:tab-stop style:position="15.222cm" style:type="right" style:leader-style="dotted" style:leader-text="." /> 
  </style:tab-stops>
  </style:paragraph-properties>
  </style:style>
  <style:style style:name="P6" style:family="paragraph" style:parent-style-name="Heading_20_1">
  <style:paragraph-properties fo:break-before="page" /> 
  </style:style>
  <style:style style:name="P7" style:family="paragraph" style:parent-style-name="Text_20_body">
  <style:paragraph-properties style:snap-to-layout-grid="false" /> 
  <style:text-properties fo:font-weight="bold" style:font-weight-asian="bold" /> 
  </style:style>
  <style:style style:name="P8" style:family="paragraph" style:parent-style-name="Text_20_body">
  <style:paragraph-properties style:snap-to-layout-grid="false" /> 
  </style:style>
  <style:style style:name="T1" style:family="text">
  <style:text-properties fo:font-weight="bold" style:font-weight-asian="bold" /> 
  </style:style>
  <style:style style:name="Sect1" style:family="section">
  <style:section-properties style:editable="false">
  <style:columns fo:column-count="1" fo:column-gap="0cm">
  <style:column style:rel-width="65181*" fo:start-indent="0.624cm" fo:end-indent="0cm" /> 
  </style:columns>
  </style:section-properties>
  </style:style>
  <text:list-style style:name="L1">
  <text:list-level-style-number text:level="1" style:num-format="" /> 
  <text:list-level-style-number text:level="2" style:num-format="" /> 
  <text:list-level-style-number text:level="3" style:num-format="" /> 
  <text:list-level-style-number text:level="4" style:num-format="" /> 
  <text:list-level-style-number text:level="5" style:num-format="" /> 
  <text:list-level-style-number text:level="6" style:num-format="" /> 
  <text:list-level-style-number text:level="7" style:num-format="" /> 
  <text:list-level-style-number text:level="8" style:num-format="" /> 
  <text:list-level-style-number text:level="9" style:num-format="" /> 
  <text:list-level-style-number text:level="10" style:num-format="" /> 
  </text:list-style>
  </office:automatic-styles>
  <office:body>
  <office:text>
  <text:sequence-decls>
  <text:sequence-decl text:display-outline-level="0" text:name="Illustration" /> 
  <text:sequence-decl text:display-outline-level="0" text:name="Table" /> 
  <text:sequence-decl text:display-outline-level="0" text:name="Text" /> 
  <text:sequence-decl text:display-outline-level="0" text:name="Drawing" /> 
  </text:sequence-decls>
  <text:p text:style-name="P1">Basic documentation For <xsl:value-of  select = "computer/system/@name"/></text:p> 
  <text:p text:style-name="Title" /> 
  <text:p text:style-name="Text_20_body">Document versions:</text:p> 
  <text:p text:style-name="Text_20_body">
  Version 1.0 
  <text:tab /> 
  <xsl:value-of select = "computer/generated/@scantime" />
  <text:tab /> 
  Your Name 
  <text:tab /> 
  First Draft 
  </text:p>
  <text:p text:style-name="Text_20_body" /> 
  <text:p text:style-name="P2">SUMMARY</text:p> 
  <text:p text:style-name="Text_20_body">[Introduce the system in a short sentence]. The system is running <xsl:value-of  select = "computer/distribution/@name"/> with <xsl:value-of  select = "computer/operatingsystem/@name"/></text:p> 
  <text:p text:style-name="Text_20_body">System Owner: [provide name and title]</text:p> 
  <xsl:if test="computer/fqdn">
		<text:p text:style-name="Text_20_body">FQDN: <xsl:value-of  select = "computer/fqdn/@name" /></text:p>
  </xsl:if>
  <text:p text:style-name="Text_20_body">Hostname: <xsl:value-of select = "computer/system/@name" /></text:p> 
  <text:p text:style-name="Text_20_body">Roles: 
  <xsl:choose>
	<xsl:when test='count(/computer/roles/role) > 0'>
		<xsl:for-each select ="/computer/roles/role" >	
			<xsl:if test =  "not(position()=1)">, </xsl:if>
			<xsl:value-of select = "@name"/>
		</xsl:for-each> 
	</xsl:when>
	<xsl:otherwise>
	None Found
	</xsl:otherwise>
  </xsl:choose>
  </text:p> 
  <text:p text:style-name="Text_20_body">Physical location: [provide info: Floor 3, Street 3, Stockholm]</text:p> 
  <text:p text:style-name="Text_20_body">Logical location: [provide info: Server VLAN 2]</text:p> 
  <text:p text:style-name="Text_20_body">Identifying Number: <xsl:value-of select = "computer/machineinfo/@identifyingnumber" /></text:p> 
  <text:p text:style-name="Text_20_body">Shipping date: [provide shipping date]</text:p> 
  <text:p text:style-name="Text_20_body">Support contract: [provide hardware service level purchased for this server]</text:p> 
  <text:p text:style-name="Text_20_body">Maintenance and changes to this documentation are recorded in [reference to log file/system].</text:p> 
  <text:p text:style-name="Text_20_body">Continuity and disaster recovery are covered in [reference to continuity plan]</text:p> 
  <text:p text:style-name="P2" /> 
  <text:p text:style-name="P2">TABLE OF CONTENTS</text:p> 
  <text:table-of-content text:style-name="Sect1" text:name="Table of Contents1">
  <text:table-of-content-source text:outline-level="3" text:use-index-marks="false" text:use-index-source-styles="true">
  <text:index-title-template text:style-name="Contents_20_Heading" /> 
  <text:table-of-content-entry-template text:outline-level="1" text:style-name="Contents_20_1">
  <text:index-entry-link-start /> 
  <text:index-entry-chapter /> 
  <text:index-entry-text /> 
  <text:index-entry-tab-stop style:type="right" style:leader-char="." /> 
  <text:index-entry-page-number /> 
  <text:index-entry-link-end /> 
  </text:table-of-content-entry-template>
  <text:table-of-content-entry-template text:outline-level="2" text:style-name="Contents_20_2">
  <text:index-entry-link-start /> 
  <text:index-entry-chapter /> 
  <text:index-entry-text /> 
  <text:index-entry-tab-stop style:type="right" style:leader-char="." /> 
  <text:index-entry-page-number /> 
  <text:index-entry-link-end /> 
  </text:table-of-content-entry-template>
  <text:table-of-content-entry-template text:outline-level="3" text:style-name="Contents_20_3">
  <text:index-entry-link-start /> 
  <text:index-entry-chapter /> 
  <text:index-entry-text /> 
  <text:index-entry-tab-stop style:type="right" style:leader-char="." /> 
  <text:index-entry-page-number /> 
  <text:index-entry-link-end /> 
  </text:table-of-content-entry-template>
  <text:table-of-content-entry-template text:outline-level="4" text:style-name="Contents_20_4">
  <text:index-entry-link-start /> 
  <text:index-entry-chapter /> 
  <text:index-entry-text /> 
  <text:index-entry-tab-stop style:type="right" style:leader-char="." /> 
  <text:index-entry-page-number /> 
  <text:index-entry-link-end /> 
  <text:index-entry-tab-stop style:type="left" style:position="15.501cm" style:leader-char="." style:with-tab="false" /> 
  </text:table-of-content-entry-template>
  <text:table-of-content-entry-template text:outline-level="5" text:style-name="Contents_20_5">
  <text:index-entry-link-start /> 
  <text:index-entry-chapter /> 
  <text:index-entry-text /> 
  <text:index-entry-tab-stop style:type="right" style:leader-char="." /> 
  <text:index-entry-page-number /> 
  <text:index-entry-link-end /> 
  <text:index-entry-tab-stop style:type="left" style:position="15.002cm" style:leader-char="." style:with-tab="false" /> 
  </text:table-of-content-entry-template>
  <text:table-of-content-entry-template text:outline-level="6" text:style-name="Contents_20_6">
  <text:index-entry-link-start /> 
  <text:index-entry-chapter /> 
  <text:index-entry-text /> 
  <text:index-entry-tab-stop style:type="right" style:leader-char="." /> 
  <text:index-entry-page-number /> 
  <text:index-entry-link-end /> 
  <text:index-entry-tab-stop style:type="left" style:position="14.503cm" style:leader-char="." style:with-tab="false" /> 
  </text:table-of-content-entry-template>
  <text:table-of-content-entry-template text:outline-level="7" text:style-name="Contents_20_7">
  <text:index-entry-link-start /> 
  <text:index-entry-chapter /> 
  <text:index-entry-text /> 
  <text:index-entry-tab-stop style:type="right" style:leader-char="." /> 
  <text:index-entry-page-number /> 
  <text:index-entry-link-end /> 
  <text:index-entry-tab-stop style:type="left" style:position="14.004cm" style:leader-char="." style:with-tab="false" /> 
  </text:table-of-content-entry-template>
  <text:table-of-content-entry-template text:outline-level="8" text:style-name="Contents_20_8">
  <text:index-entry-link-start /> 
  <text:index-entry-chapter /> 
  <text:index-entry-text /> 
  <text:index-entry-tab-stop style:type="right" style:leader-char="." /> 
  <text:index-entry-page-number /> 
  <text:index-entry-link-end /> 
  <text:index-entry-tab-stop style:type="left" style:position="13.504cm" style:leader-char="." style:with-tab="false" /> 
  </text:table-of-content-entry-template>
  <text:table-of-content-entry-template text:outline-level="9" text:style-name="Contents_20_9">
  <text:index-entry-link-start /> 
  <text:index-entry-chapter /> 
  <text:index-entry-text /> 
  <text:index-entry-tab-stop style:type="right" style:leader-char="." /> 
  <text:index-entry-page-number /> 
  <text:index-entry-link-end /> 
  <text:index-entry-tab-stop style:type="left" style:position="13.005cm" style:leader-char="." style:with-tab="false" /> 
  </text:table-of-content-entry-template>
  <text:table-of-content-entry-template text:outline-level="10" text:style-name="Contents_20_10">
  <text:index-entry-link-start /> 
  <text:index-entry-chapter /> 
  <text:index-entry-text /> 
  <text:index-entry-tab-stop style:type="right" style:leader-char="." /> 
  <text:index-entry-page-number /> 
  <text:index-entry-link-end /> 
  <text:index-entry-tab-stop style:type="left" style:position="12.506cm" style:leader-char="." style:with-tab="false" /> 
  </text:table-of-content-entry-template>
  <text:index-source-styles text:outline-level="1">
  <text:index-source-style text:style-name="Heading_20_1" /> 
  <text:index-source-style text:style-name="Title" /> 
  </text:index-source-styles>
  </text:table-of-content-source>
  <text:index-body>

  <text:p text:style-name="P3">
  <text:a xlink:type="simple" xlink:href="#2.System Information|outline">
  System Information 
  <text:tab /> 

  </text:a>
  </text:p>
  <text:p text:style-name="P3">
  <text:a xlink:type="simple" xlink:href="#3.Hardware Platform|outline">
  Hardware Platform 
  <text:tab /> 

  </text:a>
  </text:p>
  <text:p text:style-name="P4">
  <text:a xlink:type="simple" xlink:href="#3.1.General Information|outline">
  General Information 
  <text:tab /> 

  </text:a>
  </text:p>
  <text:p text:style-name="P4">
  <text:a xlink:type="simple" xlink:href="#3.2.BIOS Information|outline">
  BIOS Information 
  <text:tab /> 

  </text:a>
  </text:p>
  <text:p text:style-name="P3">
  <text:a xlink:type="simple" xlink:href="#4.Software Platform|outline">
  Software Platform 
  <text:tab /> 

  </text:a>
  </text:p>
  <text:p text:style-name="P4">
  <text:a xlink:type="simple" xlink:href="#4.1.General Information|outline">
  General Information 
  <text:tab /> 

  </text:a>
  </text:p>
  <text:p text:style-name="P4">
  <text:a xlink:type="simple" xlink:href="#4.4.Backup|outline">
  Backup 
  <text:tab /> 

  </text:a>
  </text:p>

	<xsl:if test =  "count(/computer/installedapplications/portageapplication) > 0">
		<text:p text:style-name="P4">
		<text:a xlink:type="simple" xlink:href="#4.6.Currently Installed Programs (Portage)|outline">
		Currently Installed Programs (Portage) 
		<text:tab /> 
		 
		</text:a>
		</text:p>

	</xsl:if>
	<text:p text:style-name="P3">
  <text:a xlink:type="simple" xlink:href="#5.Storage|outline">
  Storage 
  <text:tab /> 

  </text:a>
  </text:p>
  <text:p text:style-name="P4">
  <text:a xlink:type="simple" xlink:href="#5.1.General Information|outline">
  General Information 
  <text:tab /> 

  </text:a>
  </text:p>
  <text:p text:style-name="P3">
  <text:a xlink:type="simple" xlink:href="#6.Network Configuration|outline">
  Network Configuration 
  <text:tab /> 

  </text:a>
  </text:p>
  <text:p text:style-name="P4">
  <text:a xlink:type="simple" xlink:href="#6.1.IP Configuration|outline">
  IP Configuration 
  <text:tab /> 

  </text:a>
  </text:p>
  <text:p text:style-name="P3">
  <text:a xlink:type="simple" xlink:href="#7.Miscellaneous Configuration|outline">
  Miscellaneous Configuration 
  <text:tab /> 

  </text:a>
  </text:p>
  <text:p text:style-name="P4">
  <text:a xlink:type="simple" xlink:href="#7.2.Local Groups|outline">
  Local Groups 
  <text:tab /> 

  </text:a>
  </text:p>
  <text:p text:style-name="P4">
  <text:a xlink:type="simple" xlink:href="#7.3.Local User Accounts|outline">
  Local User Accounts 
  <text:tab /> 

  </text:a>
  </text:p>
  <text:p text:style-name="P4">
  <text:a xlink:type="simple" xlink:href="#7.5.Regional settings|outline">
  Regional settings 
  <text:tab /> 

  </text:a>
  </text:p>
  <text:p text:style-name="P4">
  <text:a xlink:type="simple" xlink:href="#7.6.Services|outline">
  Services 
  <text:tab /> 

  </text:a>
  </text:p>
  <text:p text:style-name="P3">
  <text:a xlink:type="simple" xlink:href="#8.Contact Information|outline">
  Contact Information 
  <text:tab /> 

  </text:a>
  </text:p>
  <text:p text:style-name="P3">
  <text:a xlink:type="simple" xlink:href="#9.Passwords|outline">
  Passwords 
  <text:tab /> 

  </text:a>
  </text:p>
  </text:index-body>
  </text:table-of-content>
  <text:p text:style-name="P5" /> 
  <text:h text:style-name="Heading_20_1" text:outline-level="1" /> 
  <text:h text:style-name="P6" text:outline-level="1">System Information</text:h> 
  <text:p text:style-name="Text_20_body">[Enter information about your server, what the system means to your organization, the purpose of this document etc.]</text:p> 
  <text:h text:style-name="Heading_20_1" text:outline-level="1">Hardware Platform</text:h> 
  <text:h text:style-name="Heading_20_2" text:outline-level="2">General Information</text:h> 
  <text:p text:style-name="Text_20_body" /> 
  <text:p text:style-name="P2">Processor</text:p> 
  <text:p text:style-name="Text_20_body">Name: <xsl:value-of select = "computer/processor/@name" /></text:p> 
  <text:p text:style-name="Text_20_body">Description: <xsl:value-of select = "computer/processor/@description" /></text:p> 
  <text:p text:style-name="Text_20_body">Speed: <xsl:value-of select = "computer/processor/@speed" /> MHz</text:p> 
  <text:p text:style-name="Text_20_body">L2 Cache Size: <xsl:value-of select = "computer/processor/@l2cachesize" /> Kb</text:p> 
  <text:p text:style-name="Text_20_body">External clock: <xsl:value-of select = "computer/processor/@externalclock" /> MHz</text:p> 
  <text:p text:style-name="Text_20_body" /> 
  <text:p text:style-name="P2">Memory</text:p> 
  <text:p text:style-name="Text_20_body">Total Memory: <xsl:value-of select = "computer/memory/@totalsize" /> Mb</text:p> 
  <text:p text:style-name="Text_20_body">Total Swap: <xsl:value-of select = "computer/memory/@swapsize" /> Mb</text:p> 


<text:p text:style-name="Text_20_body" /> 
  <text:h text:style-name="Heading_20_2" text:outline-level="2">BIOS Information</text:h> 
  <text:h text:style-name="Heading_20_1" text:outline-level="1">Software Platform</text:h> 
  <text:h text:style-name="Heading_20_2" text:outline-level="2">General Information</text:h> 
  <text:h text:style-name="Heading_20_2" text:outline-level="2">Backup</text:h> 
  <text:p text:style-name="Text_20_body">[Enter information about the systems backup routines.]</text:p> 
	<xsl:if test =  "count(/computer/installedapplications/portageapplication) > 0">
		<text:h text:style-name="Heading_20_2" text:outline-level="2">Currently Installed Programs (Portage)</text:h> 
		<table:table table:name="Portage" table:style-name="Portage">
		<table:table-column table:style-name="Portage.A" table:number-columns-repeated="2" /> 
		<table:table-column table:style-name="Portage.D" /> 
		<table:table-row table:style-name="Portage.1">
		<table:table-cell table:style-name="Portage.A1" office:value-type="string">
		<text:p text:style-name="P7">Name</text:p> 
		</table:table-cell>
		<table:table-cell table:style-name="Portage.A1" office:value-type="string">
		<text:p text:style-name="P7">Version</text:p> 
		</table:table-cell>
		<table:table-cell table:style-name="Portage.A1" office:value-type="string">
		<text:p text:style-name="P7">Install Date</text:p> 
		</table:table-cell>
		</table:table-row>
	
		<xsl:for-each select ="/computer/installedapplications/portageapplication" >
			<table:table-row table:style-name="Portage.1">
			<table:table-cell table:style-name="Portage.A1" office:value-type="string">
			<text:p text:style-name="P8"><xsl:value-of select = "@productname"/></text:p> 
			</table:table-cell>
			<table:table-cell table:style-name="Portage.A1" office:value-type="string">
			<text:p text:style-name="P8"><xsl:value-of select = "@version"/></text:p> 
			</table:table-cell>
			<table:table-cell table:style-name="Portage.A1" office:value-type="string">
			<text:p text:style-name="P8"><xsl:value-of select = "@installdate"/></text:p> 
			</table:table-cell>
			</table:table-row>
		</xsl:for-each> 
	  </table:table>
  </xsl:if>
  <text:p text:style-name="Text_20_body" /> 
  <text:h text:style-name="Heading_20_1" text:outline-level="1">Storage</text:h> 
  <text:h text:style-name="Heading_20_2" text:outline-level="2">General Information</text:h> 
  <text:h text:style-name="Heading_20_1" text:outline-level="1">Network Configuration</text:h> 
  <text:h text:style-name="Heading_20_2" text:outline-level="2">IP Configuration</text:h> 
  <text:h text:style-name="Heading_20_1" text:outline-level="1">Miscellaneous Configuration</text:h> 
	<text:h text:style-name="Heading_20_2" text:outline-level="2">Local Groups</text:h> 
	<xsl:for-each select ="/computer/localgroups/group" >
		<text:p text:style-name="Text_20_body"><xsl:value-of select = "@name"/></text:p> 
	</xsl:for-each>
	<text:h text:style-name="Heading_20_2" text:outline-level="2">Local User Accounts</text:h> 
	<xsl:for-each select ="/computer/localusers/user" >
		<text:p text:style-name="Text_20_body"><xsl:value-of select = "@name"/></text:p> 
	</xsl:for-each>

	<text:p text:style-name="Text_20_body" /> 
  <text:h text:style-name="Heading_20_2" text:outline-level="2">Regional settings</text:h> 
  <text:p text:style-name="Text_20_body">Time Zone: <xsl:value-of select = "computer/regional/@timezone" /></text:p> 
  <text:h text:style-name="Heading_20_2" text:outline-level="2">Services</text:h> 
  <table:table table:name="Services" table:style-name="Services">
  <table:table-column table:style-name="Services.A" table:number-columns-repeated="3" /> 
  <table:table-column table:style-name="Services.D" /> 
  <table:table-row table:style-name="Services.1">
  <table:table-cell table:style-name="Services.A1" office:value-type="string">
  <text:p text:style-name="P7">Name</text:p> 
  </table:table-cell>
  <table:table-cell table:style-name="Services.A1" office:value-type="string">
  <text:p text:style-name="P7">Start Mode</text:p> 
  </table:table-cell>
  <table:table-cell table:style-name="Services.A1" office:value-type="string">
  <text:p text:style-name="P7">Started</text:p> 
  </table:table-cell>
  <table:table-cell table:style-name="Services.A1" office:value-type="string">
  <text:p text:style-name="P7">Runlevel</text:p> 
  </table:table-cell>
  </table:table-row>
	<xsl:for-each select ="/computer/services/service" >
		<table:table-row table:style-name="Services.1">
		<table:table-cell table:style-name="Services.A1" office:value-type="string">
		<text:p text:style-name="P8"><xsl:value-of select = "@name"/></text:p> 
		</table:table-cell>
		<table:table-cell table:style-name="Services.A1" office:value-type="string">
		<text:p text:style-name="P8"><xsl:value-of select = "@startmode"/></text:p> 
		</table:table-cell>
		<table:table-cell table:style-name="Services.A1" office:value-type="string">
		<text:p text:style-name="P8"><xsl:value-of select = "@started"/></text:p> 
		</table:table-cell>
		<table:table-cell table:style-name="Services.A1" office:value-type="string">
		<text:p text:style-name="P8"><xsl:value-of select = "@runlevel"/></text:p> 
		</table:table-cell>
		</table:table-row>
	</xsl:for-each>
  </table:table>
  <text:p text:style-name="Text_20_body" /> 
  <text:p text:style-name="Text_20_body" /> 
  <text:h text:style-name="Heading_20_1" text:outline-level="1">Contact Information</text:h> 
  <text:p text:style-name="Text_20_body">[System owner [Name, title, telephone, e-mail]</text:p> 
  <text:p text:style-name="Text_20_body">[Hardware vendors [Name, telephone, website, e-mail etc.]</text:p> 
  <text:p text:style-name="Text_20_body">[Software vendors [Name, telephone, website, e-mail etc.]</text:p> 
  <text:h text:style-name="Heading_20_1" text:outline-level="1">Passwords</text:h> 
  <text:p text:style-name="Text_20_body">[Depending on your security policy and where you are planning on keeping this document you might want to delete this section.]</text:p> 
  <text:p text:style-name="Text_20_body" /> 
  </office:text>
  </office:body>
  </office:document-content>



</xsl:template>
</xsl:stylesheet>