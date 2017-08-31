#!/usr/bin/env bash

clear

msg=`basename "$0"`
lib/show_logo $msg


# ---------------------------------------------------------------------
msg='Run Installers'
lib/show_logo $msg

echo 'First things first , making sure evertyhing is up-to-date'
sudo apt-get update
sudo apt-get upgrade

echo 'Checking which install scripts will be run ...'
run-parts --test lib/install
echo ''

echo 'Running the install scripts ...'
run-parts lib/install




# ---------------------------------------------------------------------
