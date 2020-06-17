#!/bin/bash

MODEDIR="${HOME}/.modes"
GLOBAL_ALIAS="${HOME}/.aliases"

# leave empty to load mode after edit, any value to disable autoload
NO_AUTO_LOAD=""

if [ -z "${EDITOR}" ]; then
  EDITOR="vi"
fi

if [ ! -d "${MODEDIR}" ]; then
  mkdir -p "${MODEDIR}"
fi

function usage {
  echo "On demand source script loader"
  echo "  Usage  :  mode [modename] [action] [action argument]"
  echo "  List   :  mode"
  echo "  Load   :  mode <modename>"
  echo "  Show   :  mode <modename> show"
  echo "  Edit   :  mode <modename> edit"
  echo "  Import :  mode <modename> import <othermode>"
  echo "  Help   :  mode help"
}

function load_mode {
  MODE=$1
  if [ -f "${MODEDIR}/$MODE" ]; then
    unalias -a
    if [ -f "$GLOBAL_ALIAS" ]; then
      . $GLOBAL_ALIAS
    fi
    . "${MODEDIR}/$MODE"
    echo "Loaded ${MODE}"
  else
    echo "${MODE} does not exist"
  fi
}

function edit_mode {
  MODE=$1
  $EDITOR "${MODEDIR}/$MODE"
}

function list_mode {
  echo "Available Modes:"
  for m in `ls ${MODEDIR}` ; do
    echo "  ${m}"
  done
}

function show_mode {
  MODE=$1
  cat "${MODEDIR}/$MODE"
}

function mode {
  MODE=$1
  ACTION=$2
  ACTION_ARG=$3
  if [ -z "$MODE" ]; then
    list_mode
  elif [ "$MODE" = "help" ]; then
    usage
  elif [ -z "$ACTION" ]; then
    load_mode $MODE
  elif [ "$ACTION" = "edit" ]; then
    edit_mode $MODE
    if [ -z "$NO_AUTO_LOAD" ]; then
      load_mode $MODE
    fi
  elif [ "$ACTION" = "show" ]; then
    show_mode $MODE
  else
    usage
  fi
}
