#!/bin/sh

# xfce4-xsecurelock: A simple wrapper for xsecurelock that plays nice
#                    with xfce4-power-manager
# Copyright (C) 2025  Shawn Henson
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

if ! pgrep -x "xsecurelock" > /dev/null; then
    xsecurelock &
else
    echo "xsecurelock is already running!" >> /dev/stderr
fi
