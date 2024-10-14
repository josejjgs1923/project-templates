#!/usr/bin/env bash

error(){
  echo "$1" 1>&2
}

error_exit(){
  echo "$1" 1>&2 && exit 1
}


