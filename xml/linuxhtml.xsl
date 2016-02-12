<?xml version='1.0' encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
         
                version="1.0"><xsl:output method="html"/>

<xsl:include href="sydi-html-styes.xsl"/>
<xsl:template match="/">


<xsl:call-template name="general-server" />
<html>
<head>
	<title>Documentation for <xsl:value-of  select = "computer/system/@name" /></title>
</head>
<body>

<h1><xsl:value-of  select = "computer/system/@name" /></h1>

<b>Hostname: </b><xsl:value-of select = "computer/system/@name" /><br />
<b>Operating System: </b><xsl:value-of select = "computer/operatingsystem/@name" /><br />
<b>Distribution: </b><xsl:value-of select = "computer/distribution/@name" /><br />
<b>Roles: </b>
<xsl:choose>
	<xsl:when test='count(/computer/roles/role) > 0'>
		<xsl:for-each select ="/computer/roles/role" >	
			<xsl:if test =  "not(position()=1)">, </xsl:if>
			<xsl:value-of select = "@name"/>
		</xsl:for-each> 
		<br />
	</xsl:when>
	<xsl:otherwise>
	None Found<br />
	</xsl:otherwise>
</xsl:choose>

<b>Identifying Number: </b><xsl:value-of select = "computer/machineinfo/@identifyingnumber" /><br />
<b>Scan Time: </b><xsl:value-of select = "computer/generated/@scantime" /><br />

<br />

<h1><a >Table Of Contents</a></h1>
<ol>
	<li><a href="#hardwareplatform">Hardware Platform</a></li>
	<ol>
		<li><a href="#hardwareplatform_general">General Information</a></li>
	</ol>
	
	<li><a href="#softwareplatform">Software Platform</a></li>
	<ol>
		<li><a href="#softwareplatform_general">General Information</a></li>
		<xsl:if test="computer/installedapplications/portageapplication">
			<li><a href="#softwareplatform_portageapplications">Currently Installed Programs (Portage)</a></li>
		</xsl:if>
	</ol>

	<li><a href="#storage">Storage</a></li>
	<ol>
		<li><a href="#storage_general">General Information</a></li>
	</ol>
	<li><a href="#network">Network Configuration</a></li>
	
	<li><a href="#miscellaneous">Miscellaneous Configuration</a></li>
	<ol>
		<xsl:if test="computer/localgroups/group">
			<li><a href="#miscellaneous_localgroups">Local Groups</a></li>
		</xsl:if>
		<xsl:if test="computer/localusers/user">
			<li><a href="#miscellaneous_localusers">Local Users</a></li>
		</xsl:if>
		<li><a href="#miscellaneous_regional">Regional Settings</a></li>
		<xsl:if test="computer/services/service">
			<li><a href="#miscellaneous_services">Services</a></li>
		</xsl:if>
	</ol>
</ol>


<h1 id="hardwareplatform">Hardware Platform</h1>
<h2 id="hardwareplatform_general">General Information</h2>

<br /><strong>Processor</strong><br />
<b>Name: </b><xsl:value-of select = "computer/processor/@name" /><br />
<b>Description: </b><xsl:value-of select = "computer/processor/@description" /><br />
<b>Speed: </b><xsl:value-of select = "computer/processor/@speed" /> MHz<br />
<b>L2 Cache Size: </b><xsl:value-of select = "computer/processor/@l2cachesize" /> Kb<br />
<b>External Clock: </b><xsl:value-of select = "computer/processor/@externalclock" /> MHz<br />
The system has <xsl:value-of select = "computer/processor/@count" /> processor(s)<br />
<br />

<strong>Memory</strong><br />
<b>Total Memory: </b> <xsl:value-of select = "computer/memory/@totalsize" /> Mb<br />
<b>Total Swap: </b> <xsl:value-of select = "computer/memory/@swapsize" /> Mb<br />

<h1 id="softwareplatform">Software Platform</h1>
<h2 id="softwareplatform_general">General Information</h2>


<xsl:if test="computer/installedapplications/portageapplication">
<h2 id="softwareplatform_portageapplications">Currently Installed Programs (Portage)</h2>
<table>
	<tr>
		<th>Name</th>
		<th>Version</th>
		<th>Install Date</th>
	</tr>
	<xsl:for-each select ="/computer/installedapplications/portageapplication" >
		<tr>
			<td><xsl:value-of select = "@productname"/></td>
			<td><xsl:value-of select = "@version"/></td>
			<td><xsl:value-of select = "@installdate"/></td>
		</tr>
	</xsl:for-each> 
</table>
</xsl:if>

<h1 id="storage">Storage</h1>
<h2 id="storage_general">General Information</h2>
<xsl:for-each select ="/computer/storage/drives" >
	<strong><xsl:value-of select = "@name"/> - <xsl:value-of select = "@deviceid"/></strong><br />
	<b>Interface: </b><xsl:value-of select = "@interface"/><br />
	<b>Total Disk Size: </b><xsl:value-of select = "@totaldisksize"/> Gb<br />
	<xsl:for-each select ="partition" >
		<xsl:value-of select = "@name"/>\ <xsl:value-of select = "@size"/> Gb (<xsl:value-of select = "@freespace"/> Gb Free) <xsl:value-of select = "@filesystem"/><br />
	</xsl:for-each>
</xsl:for-each> 

<h1 id="network">Network Configuration</h1>

<h1 id="miscellaneous">Miscellaneous Configuration</h1>

<xsl:if test="computer/localgroups/group">
<h2 id="miscellaneous_localgroups">Local Groups</h2>
<xsl:for-each select ="/computer/localgroups/group" >
	<xsl:value-of select = "@name"/><br />
</xsl:for-each>
</xsl:if>

<xsl:if test="computer/localusers/user">
<h2 id="miscellaneous_localusers">Local Users</h2>
<xsl:for-each select ="/computer/localusers/user" >
	<xsl:value-of select = "@name"/><br />
</xsl:for-each>
</xsl:if>

<h2 id="miscellaneous_regional">Regional Settings</h2>
<b>Time Zone: </b><xsl:value-of select = "computer/regional/@timezone" /><br />

<xsl:if test="computer/services/service">
<h2 id="miscellaneous_services">Services</h2>
<table>
	<tr>
		<th>Name</th>
		<th>Startmode</th>
		<th>Started</th>
		<th>Runlevel</th>
	</tr>
	<xsl:for-each select ="/computer/services/service" >
	<tr>
		<td><xsl:value-of select = "@name"/></td>
		<td><xsl:value-of select = "@startmode"/></td>
		<td><xsl:value-of select = "@started"/></td>
		<td><xsl:value-of select = "@runlevel"/></td>
	</tr>
	</xsl:for-each> 
</table>
</xsl:if>

</body>
</html>

</xsl:template>
</xsl:stylesheet>
