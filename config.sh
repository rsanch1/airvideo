#!/bin/sh
AVS_HOME="/opt/airvideo-server"
CONFIG_DIR="/config"

if [[ ! -f ${CONFIG_DIR}"/AirVideoServerLinux.properties" ]]; then
	cp -f ${AVS_HOME}/AirVideoServerLinux.properties ${CONFIG_DIR}
fi

if [[ -n ${FOLDERS} ]]; then
	sed -i -e "s#\(folders =\).*# \1 ${FOLDERS}#g" ${CONFIG_DIR}"/AirVideoServerLinux.properties"
fi
