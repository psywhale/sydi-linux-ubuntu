#!/usr/bin/python
#==========================================================
# LANG : Python
# NAME : sydi-linux.py
# AUTHORS : Patrick Ogenstad (patrick.ogenstad@netsafe.se)
#           Patrik Kullman (patrik.kullman@netsafe.se)
# VERSION : 0.1
# DATE : 2005-04-19
# Description : Creates a basic documentation for a Linux
# system, which you can use as a starting point.
#
# COMMENTS : 
#
# UPDATES : http://sydi.sourceforge.net/
#
# Running the script: ./sydi-linux.py
#
# Feedback: Please send feedback to patrick.ogenstad@netsafe.se
#                                   patrik.kullman@netsafe.se
#
# LICENSE :
# Copyright (c) 2004-2005, Patrick Ogenstad
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
#  * Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
#  * Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#  * Neither the name SYDI nor the names of its contributors may be used
#    to endorse or promote products derived from this software without
#    specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#==========================================================
#==========================================================

import sys, os, re, time

nScriptVersion = 0.1

def checkversion(nVersion):
	import httplib
	conn = httplib.HTTPConnection("sydi.sourceforge.net")
	conn.request("GET", "/versions.php?package=sydi-linux")
	r1 = conn.getresponse()
	if r1.status == 200:
		data1 = r1.read()
		if nVersion < data1:
			print "A New version of SYDI-Linux has been released: " + data1
			print "Download it at http://sydi.sourceforge.net"
		else:
			print "You have the latest version"
	else:
		print "Unable to connect to server, verify that you are connected to the internet or try again later"
	conn.close()

def getCPUInfo():
	cpuinfo = file("/proc/cpuinfo")
	proc = {}
	for line in cpuinfo:
		try:
			key,value = re.split(":", line)
		except:
			break

		key = key.strip()
		value = value.strip()
		if key == "processor":
			proc['num'] = int(value)+1
		elif key == "vendor_id":
			proc['id'] = value
		elif key == "model name":
			proc['name'] = value
		elif key == "cpu family":
			proc['family'] = value
		elif key == "model":
			proc['model'] = value
		elif key == "stepping":
			proc['stepping'] = value
		elif key == "cpu MHz":
			proc['mhz'] = value
		elif key == "cache size":
			proc['cache'] = re.split(" ", value)[0]
	cpuinfo.close()
	proc['xml'] = '<processor count="' + str(proc['num']) + '" name="' + proc['name'] + '"'
	proc['xml'] += ' description="' + proc['id'] + " Family " + proc['family'] + " Model " + proc['model'] + " Stepping " + proc['stepping'] + '"'
	proc['xml'] += ' speed="' + proc['mhz'] + '" l2cachesize="' + proc['cache'] + '" />'
	return proc


def getHostInfo():
	host = {}
	hostfd = file("/proc/sys/kernel/hostname")
	host['name'] = hostfd.next().strip()
	hostfd.close()
	domainfd = file("/proc/sys/kernel/domainname")
	host['domain'] = domainfd.next().strip()
	domainfd.close()
	return host

def getInstalledPackages(platforminfo):
	if (platforminfo['distribution'] == "gentoo"):
		return getDistGentooInstPkgs()
	return ""

def getLocalGroups():
	group = file("/etc/group")
	groups = []
	for i in group:
		groupline = i.strip()
		cgroup = groupline.split(":")[0]
		gid = groupline.split(":")[2]
		groups.append({'name': cgroup, 'xml': '<group name="'+cgroup+'" id="'+gid+'" />'})
	return groups


def getLocalUsers():
	passwd = file("/etc/passwd")
	users = []
	for i in passwd:
		passwdline = i.strip()
		user = passwdline.split(":")[0]
		uid = passwdline.split(":")[2]
		users.append({'name': user, 'xml': '<user name="'+user+'" id="'+uid+'" />'})
	return users


def getMemInfo():
	meminfo = file("/proc/meminfo")
	mem = {}
	for line in meminfo:
		try:
			key,value = re.split(":", line)
		except:
			break

		value = value.strip()

		if key == "MemTotal":
			mem['total'] = int(re.split(" ", value)[0])/1024
		elif key == "SwapTotal":
			mem['swap'] = int(re.split(" ", value)[0])/1024

	return mem

def getPlatformInfo():
	global osUname
	platform = {}
	platform['ostype'] = osUname[0]
	platform['osrelease'] = osUname[2]
	if os.path.isfile("/etc/gentoo-release"):
		platform['distribution'] = "gentoo"
	elif os.path.isfile("/etc/redhat-release"):
		platform['distribution'] = "redhat"
	elif os.path.isfile("/etc/lsb-release"):
		platform['distribution'] = "ubuntu"
	else:
		platform['distribution'] = "unknown"

	return platform

def getServices(platforminfo):
	if (platforminfo['distribution'] == "gentoo"):
		return getDistGentooServices()
	elif (platforminfo['distribution'] == "ubuntu"):
		return getUbuntuServices();
	return ""


def getTimezone():
	timezone = {}
	timezone['timezone'] = time.tzname[0]
	timezone['xml'] = '<regional timezone="' + timezone['timezone'] + '" />'
	return timezone

# Get Ubuntu Specifics
def getUbuntuServices():
	services = {}
	retServices = []
	services['all'] = os.listdir("/etc/init.d/")	
#	os.open("service --status-all>/tmp/srv-stats")
	services['exclude'] = []
	for i in services['all']:
		if i not in services['exclude'] and os.access("/etc/init.d/" + i, os.X_OK):
			retServices.append({})
			count = (len(retServices)-1)
			startmode = "Auto"
			started = "true"
			runlevel = "2"
			retServices[count]['name'] = i
			retServices[count]['started'] = 'started'
			retServices[count]['startmode'] = 'Auto'
			retServices[count]['runlevel'] = '2'
			retServices[count]['xml'] = '<service name="' + i + '" startmode="' + startmode + '"'
			retServices[count]['xml'] += ' started="' + started + '" runlevel="' + runlevel + '" />'
	return retServices

# Start Gentoo Specifics	
def getDistGentooServices():
	services = {}
	retServices = []
	services['all'] = os.listdir("/etc/init.d/")
	services['boot'] = os.listdir("/etc/runlevels/boot/")
	services['default'] = os.listdir("/etc/runlevels/default/")
	services['started'] = os.listdir("/var/lib/init.d/started/")
	services['exclude'] = ['reboot.sh', 'shutdown.sh', 'halt.sh', 'functions.sh', 'depscan.sh', 'runscript.sh']
	services['all'].sort()
	for i in services['all']:
		if i not in services['exclude'] and os.access("/etc/init.d/" + i, os.X_OK):
			retServices.append({})
			count = (len(retServices)-1)
			if i in services['started']:
				started = "True"
			else:
				started = "False"
			if i in services['boot']:
				startmode = "Auto"
				runlevel = "boot"
			elif i in services['default']:
				startmode = "Auto"
				runlevel = "default"
			else:
				startmode = "Manual"
				runlevel = "(none)"
			retServices[count]['name'] = i
			retServices[count]['started'] = started
			retServices[count]['startmode'] = startmode
			retServices[count]['runlevel'] = runlevel
			retServices[count]['xml'] = '<service name="' + i + '" startmode="' + startmode + '"'
			retServices[count]['xml'] += ' started="' + started + '" runlevel="' + runlevel + '" />'
	return retServices

def getDistGentooInstPkgs():
	package = []
	for i in os.popen('qpkg -I -v -nc'):
		package.append(i.strip())
	package.sort()
	instPackages = []
	emergeLog = file("/var/log/emerge.log")
	installTimes = {}
	for i in emergeLog:
		if re.match('(\d+):  ::: completed emerge \((\d+) of (\d+)\) (\S+) to /', i):
			installTimes[i.split(" ")[-3]] = i.split(":")[0]

	for i in package:
		if i.split("-")[-1][0] == "r":
			splitby = -2
		else:
			splitby = -1
		
		version = i.split("-")[splitby:]
		version = "-".join(version)
		name = i.split("-")[:splitby]
		name = "-".join(name)
		try:
			installdate = int(installTimes[name + "-" + version])
			installdate = time.strftime("%Y-%m-%d", time.localtime(installdate))
		except:
			installdate = "N/A"
		
		instPackages.append({"name": name, "version": version, "xml": '<portageapplication productname="'+name+'" version="'+version+'" installdate="'+str(installdate)+'" />'})
	return instPackages

# End Gentoo Specifics

def unsupportedExit():
	print "This machine (" + os.name + "/" + sys.platform + ") isn't supported yet."
	print "Exiting.."

	
def writeXML(outputFile):
	global gendate, platforminfo, hostinfo, cpuinfo, services, installed_packages, localUsers, localGroups
	xmlFile = file(outputFile, "w+")
	xmlFile.write('<?xml version="1.0" encoding="ISO-8859-1" ?>\n')
	xmlFile.write('<computer>\n')
	xmlFile.write(' <generated script="sydi-linux" version="0.1" scantime="' + gendate + '" />\n')
	xmlFile.write(' <system name="' + hostinfo['name'] + '" />\n')
	xmlFile.write(' <operatingsystem name="' + platforminfo['ostype'] + ' ' + platforminfo['osrelease'] + '" />\n')
	xmlFile.write(' <distribution name="' + platforminfo['distribution'] +'" />\n')
	xmlFile.write(' <fqdn name="' + hostinfo['name'] + '.' + hostinfo['domain'] + '" />\n')
	xmlFile.write(' <roles>\n')
	xmlFile.write(' </roles>\n')
	xmlFile.write(' ' + cpuinfo['xml'] + '\n')
	xmlFile.write(' <memory totalsize="' + str(meminfo['total']) + '" swapsize="' + str(meminfo['swap']) + '" />\n')
	xmlFile.write(' <installedapplications>\n')
	for i in installed_packages:
		xmlFile.write('  ' + i['xml'] + '\n')
	xmlFile.write(' </installedapplications>\n')
	xmlFile.write(' <localgroups>\n')
	for i in localGroups:
		xmlFile.write('  ' + i['xml'] + '\n')
	xmlFile.write(' </localgroups>\n')
	xmlFile.write(' <localusers>\n')
	for i in localUsers:
		xmlFile.write('  ' + i['xml'] + '\n')
	xmlFile.write(' </localusers>\n')
	xmlFile.write(' ' + timezone['xml'] + '\n')
	xmlFile.write(' <services>\n')
	for i in services:
		xmlFile.write('  ' + i['xml'] + '\n')
	xmlFile.write(' </services>\n')
	xmlFile.write('</computer>\n')
	xmlFile.close()
	

platform = ""

if os.name == "posix":
	# Running POSIX - good
	if sys.platform == "linux2":
		# Running Linux - very good !
		platform = "Linux"
	else:
		unsupportedExit()
else:
	unsupportedExit()

osUname = os.uname()
hostinfo = getHostInfo()

defaultOutputFile = hostinfo['name'] + ".xml"

gendate = time.strftime("%Y-%m-%d %H:%M:%S")
cpuinfo = getCPUInfo()
meminfo = getMemInfo()
timezone = getTimezone()
platforminfo = getPlatformInfo()
services = getServices(platforminfo)
installed_packages = getInstalledPackages(platforminfo)
localUsers = getLocalUsers()
localGroups = getLocalGroups()
writeXML(defaultOutputFile)
