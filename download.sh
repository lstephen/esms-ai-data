#!/bin/bash

set -e

echo "Downloading MIS roster..."

curl -L http://www.ssl2001.ukhome.net/mis.txt -o rosters/Ssl/mis.txt
curl -L http://www.ssl2001.ukhome.net/msy.txt -o rosters/Ssl/msy.txt
curl -L http://www.ssl2001.ukhome.net/free_agents.txt -o rosters/Ssl/free_agents.txt

echo "MIS Done."


