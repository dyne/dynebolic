#!/bin/bash


[ -r "/usr/local/bin/libreoffice24.2" ] && {
	>&2 echo "-- Libreoffice found already installed."
	exit 0
}

wget https://files.dyne.org/dynebolic/development/LibreOffice_24.2.1_Linux_x86-64_deb.tar.gz
tar xf LibreOffice_24.2.1_Linux_x86-64_deb.tar.gz \
&& cd LibreOffice_24.2.1.2_Linux_x86-64_deb/DEBS \
&& dpkg -i *.deb

rm -rf LibreOffice*
