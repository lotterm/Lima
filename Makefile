#############################################################################
##
## This file is part of LImA, a Library for Image Acquisition
##
## http://forge.epn-campus.eu/projects/show/lima
##
## Copyright (C) : 2009,2010
## European Synchrotron Radiation Facility
## BP 220, Grenoble 38043
## FRANCE
##
## This is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
##
## This software is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; if not, see <http://www.gnu.org/licenses/>.
###########################################################################


sub-dirs = third-party common hardware control camera build

all:	src test

include config.inc

include global.inc

config.inc:
	@echo "*** Creating default \"config.inc\" with LImA core"
	@echo "*** Please edit it to activate compilation of hardware modules"
	cp config.inc_default config.inc
	@false

config:
	cd third-party/Processlib/sip; python configure.py
	$(MAKE) -C sip config

include install.inc

