#!/bin/bash
# Filename:      update-coronavirus-infos.sh
# Purpose:       Keep track of changes of the following sites:
#                https://www.sozialministerium.at/Informationen-zum-Coronavirus/Neuartiges-Coronavirus-(2019-nCov).html
#                https://www.sozialministerium.at/Informationen-zum-Coronavirus/Coronavirus---Haeufig-gestellte-Fragen.html
# Authors:       Darshaka Pathirana <dpat@syn-net.org>
# License:       This file is licensed under the MIT
################################################################################

wget -q https://www.sozialministerium.at/Informationen-zum-Coronavirus/Coronavirus---Haeufig-gestellte-Fragen.html -O Coronavirus---Haeufig-gestellte-Fragen.html
STAND="Stand: $(sed -n -e "0,/(Stand:.*)/ s/.*(Stand: \(.*\))/\1/p" Coronavirus---Haeufig-gestellte-Fragen.html)"
git add Coronavirus---Haeufig-gestellte-Fragen.html
git commit --short -uno -m "Coronvirus FAQ ${STAND}"
wget -q "https://www.sozialministerium.at/Informationen-zum-Coronavirus/Neuartiges-Coronavirus-(2019-nCov).html" -O Neuartiges-Coronavirus-\(2019-nCov\).html
STAND="Stand: $(sed -n -e "0,/Stand,/ s/.*Stand, \(.*\)Bisher.*/\1/p" Neuartiges-Coronavirus-\(2019-nCov\).html)"
git add Neuartiges-Coronavirus-\(2019-nCov\).html
git commit --short -uno -m "Coronvirus ${STAND}"
