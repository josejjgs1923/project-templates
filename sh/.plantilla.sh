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

[ -n "${_ayuda:+1}" ] && ayuda 0
