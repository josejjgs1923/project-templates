#!/usr/bin/env sh

DIR_SCRIPT="$( dirname "$( readlink -f "$0")" )"
MODULOS="$DIR_SCRIPT/modulos"

. "$MODULOS/funciones_error.sh"

ayuda() {
  less -FEXR <<- HELP
  uso: $(basename "$0")
HELP
	exit "$1"
}

# -- PARSE OPTIONS --
while getopts opt; do
	case "$opt" in

		h) ayuda  0 ;;
		\?) ayuda 1 ;;
	esac
done
shift $(( OPTIND-1 ))

