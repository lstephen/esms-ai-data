#!/bin/bash

set -e

mkdir tmp

echo "Downloading WAT roster..."

curl -L http://www.eslmanager.com/England/Premiership/Rosters/wat.txt -o rosters/Esl/wat.txt

echo "WAT Done."

echo "Downloading GLI roster..."

pushd tmp

curl -L http://www.ucfl.co.uk/rosters/senior.zip -o senior.zip
curl -L http://www.ucfl.co.uk/rosters/youth.zip -o youth.zip

unzip -o senior.zip
unzip -o youth.zip

popd

cp tmp/div2/gli.txt rosters/Ucfl/gli.txt
cp tmp/youthdiv1/gly.txt rosters/Ucfl/gly.txt

rm -rf tmp
