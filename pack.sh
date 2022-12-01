
FILE=haxophone001-$1.zip
rm -f ${FILE}
zip -r9 ${FILE} gerbers
mv ${FILE} builds 

./scripts/jlcpcb-pos-csp-process.sh gerbers/haxophone001-bottom-pos.csv
cp gerbers/haxophone001-bottom-pos.csv builds/haxophone001-bottom-pos-$1.csv
cp haxophone001.csv builds/haxophone001-bom-$1.csv
