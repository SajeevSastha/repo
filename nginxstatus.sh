#!/bin/bash

METRIC_TYPE=$1;


function start_Nginx(){
  systemctl start nginx
  #printf "docker is started $output\n";
}

function stop_Nginx(){
  systemctl stop nginx
  #printf "docker is stopped $output\n";
}

# Trigger proper function based on CLI argument.
case $METRIC_TYPE in
  start)
    printf "Nginx is Started...\n";
    start_Nginx;
    ;;
  stop)
    printf "Nginx is stopped...\n";
    stop_Nginx;
    ;;

  *)
    printf "Please provide valid input.\n";
      exit 1;
      ;;
esac
