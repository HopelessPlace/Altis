#!/bin/bash

DATESTAMP="$(date +%s)"

RELEASE="${1:-testing}"

RELEASE_DIRECTORY="/cygdrive/d/CYGWIN_RELEASES/${RELEASE}/${DATESTAMP}"

SOURCE="${2:-/cygdrive/c/Users/${USERNAME}/Documents/Github/Altis}"

PBO_MANAGER="/cygdrive/c/Program Files/PBO Manager v.1.4 beta/PBOConsole.exe"

FILEZILLA="/cygdrive/c/Program Files/FileZilla FTP Client/filezilla.exe"

cd "${SOURCE}"

git pull origin master || exit 1

mkdir -pv "${RELEASE_DIRECTORY}"

cd "${RELEASE_DIRECTORY}"

mkdir -pv HOP44_Life.Altis
mkdir -pv life_server

#
# Altis_Life.Altis.pbo
#
rsync -Pavpx --delete "/cygdrive/c/Users/${USERNAME}/Documents/GitHub/Altis/upstream/ArmaLife/Altis-4.4r1/Altis_Life.Altis/." "HOP44_Life.Altis/."

rsync -Pavpx          "/cygdrive/c/Users/${USERNAME}/Documents/GitHub/Altis/Altis_Life.Altis/."                               "HOP44_Life.Altis/."

rm -vf HOP44_Life.Altis.pbo*

"${PBO_MANAGER}" \
	-pack "D:\\CYGWIN_RELEASES\\${RELEASE}\\${DATESTAMP}\\HOP44_Life.Altis" \
	"D:\\CYGWIN_RELEASES\\${RELEASE}\\${DATESTAMP}\\HOP44_Life.Altis.pbo"

#
# life_server.pbo
#
rsync -Pavpx --delete "/cygdrive/c/Users/${USERNAME}/Documents/GitHub/Altis/upstream/ArmaLife/Altis-4.4r1/life_server/." "life_server/."

rsync -Pavpx          "/cygdrive/c/Users/${USERNAME}/Documents/GitHub/Altis/life_server/."                               "life_server/."

rm -vf life_server.pbo*

"${PBO_MANAGER}" \
        -pack "D:\\CYGWIN_RELEASES\\${RELEASE}\\${DATESTAMP}\\life_server" \
        "D:\\CYGWIN_RELEASES\\${RELEASE}\\${DATESTAMP}\\life_server.pbo"

sync

"${FILEZILLA}" --site="0/steam midocloud.de" --local="D:\\CYGWIN_RELEASES\\${RELEASE}\\${DATESTAMP}"

