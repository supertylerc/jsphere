#!/bin/sh
# File    : install.sh
# Date    : 2013-02-08
# Author  : Tyler Christiansen <tyler@oss-stack.io>
# License : BSD 2-Clause (http://opensource.org/licenses/BSD-2-Clause)
# Purpose : Install the jsphere scripts by Tyler Christiansen.

cat <<EOF
This script will install Tyler's Junosphere scripts, known as
the "jsphere" scripts.  This package is licensed under the
BSD 2-Clause license, and your use of this package requires
that you accept those terms.  You can view the license locally
in the "LICENSE" file, or online at:

EOF
echo $'  \e[00;34mhttp://opensource.org/licenses/BSD-2-Clause\e[00m'
echo;echo
dir="$HOME/scripts/junosphere"
echo "Creating $dir"
mkdir -p $dir && cd $_
echo $'Grabbing files \e[00;31m[\e[01;32mjsphere, jsphere_work\e[00;31m]\e[00m ...'
curl -s -O http://oss-stack.io/scripts/jsphere/jsphere
curl -s -O http://oss-stack.io/scripts/jsphere/jsphere_work
echo $'Grabbing non-critical files \e[00;31m[\e[01;32mvirtualMachines_example.csv, LICENSE, README.md\e[00;31m]\e[00m ...'
curl -s -O http://oss-stack.io/scripts/jsphere/LICENSE
curl -s -O http://oss-stack.io/scripts/jsphere/virtualMachines_example.csv
curl -s -O http://oss-stack.io/scripts/jsphere/README.md
echo $'Modifying permissions \e[00;31m[\e[01;32mjsphere - 700, jsphere_work - 700\e[00;31m]\e[00m ...'
chmod 700 ./jsphere
chmod 700 ./jsphere_work

cat <<EOF

Directions:

Download the CSV from Junosphere's Active Topology on the Virtual Machines tab.  Place this file in $dir, open your terminal, cd to the install directory, and enter the command:

EOF

echo $'  \e[00;31m./jsphere\e[00m'

echo "If you don't have anything in your ".screenrc", enter the following command:"

echo  $'  \e[00;31mecho \'caption always "%-Lw%{= BW}%50>%n%f* %t%{-}%+Lw%<"\' >> ~/.screenrc\e[00m'
echo $'\nThese directions and additional information are also located in the \e[01;32mREADME.md\e[00m file in the install directory.'
