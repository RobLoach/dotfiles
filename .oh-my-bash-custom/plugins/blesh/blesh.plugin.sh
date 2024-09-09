#! bash oh-my-bash.module
# Blesh
# https://github.com/akinomyoga/ble.sh

# Load ble.sh only in interactive shell
if [[ $- == *i* ]]; then
	# Custom BLESH_DIR
	if [[ -f ${BLESH_DIR}/ble.sh ]]; then
		source ${BLESH_DIR}/ble.sh

	# Custom BLESH_DIR with out directory
	elif [[ -f ${BLESH_DIR}/out/ble.sh ]]; then
		source ${BLESH_DIR}/out/ble.sh

	# Config directory
	elif [[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/blesh/ble.sh" ]]; then
		source "${XDG_DATA_HOME:-$HOME/.local/share}/blesh/ble.sh"

	# Global
	elif [[ -f "/usr/share/blesh/ble.sh" ]]; then
		source "/usr/share/blesh/ble.sh"

	fi
fi
