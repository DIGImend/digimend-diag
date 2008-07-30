# Copyright (c) 2008 Nikolai Kondrashov
#
# This file is part of digimend-diag.
#
# Digimend-diag is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# Digimend-diag is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with wizardpen-calibrate; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

PREFIX=/usr/local

build:
	make -Creport-dump build
	make -Cevdev-dump build

install: build
	install -m755 report-dump/report-dump ${PREFIX}/bin/digimend-report-dump
	install -m755 evdev-dump/evdev-dump ${PREFIX}/bin/digimend-evdev-dump
	install -m755 digimend-diag ${PREFIX}/bin/digimend-diag

clean:
	make -Cevdev-dump clean
	make -Creport-dump clean


