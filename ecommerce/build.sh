#!/bin/bash
echo "Starting Building the project"
sleep 2
npx tailwindcss -i ./src/tailwind.css -o ./output/tailwind.css
sleep 2
echo "Finished Building CSS"

rm -R ./dist
mkdir dist

cp -R ./*.html ./dist
echo "Done, Moving html files"
cp -R ./output ./dist/output
echo "Done, Moving CSS"
cp -R ./images ./dist/images
echo "Done, Moving images"