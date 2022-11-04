#!/bin/bash

METRIC_TYPE=$1;


function start_Docker(){
  output=$(systemctl start docker.service);
  #printf "docker is started $output\n";
}

function stop_Docker(){
  output=$(systemctl stop docker.service);
  #printf "docker is stopped $output\n";
}

# Trigger proper function based on CLI argument.
case $METRIC_TYPE in
  start)
    printf "Docker is Started...\n";
    start_Docker;
    ;;
  stop)
    printf "Docker is stopped...\n";
    stop_Docker;
    ;;

  *)
    printf "Please provide valid input.\n";
    
   printf "Please provide valid inputss.\n";
      exit 1;
      ;;
esac
