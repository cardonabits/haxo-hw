## Preparing fabrication files for JLCPCB

To prepare files for JLCPBC

1. Generate BOM from kicad
  1. (One time) Add BOM plugin from `scripts/bom2grouped\_jlcpcb.xsl` to kicad BOM tool.
  2. Use that plugin to generate BOM.  This will have JLCPCB part numbers.
2. Generate gerbers from kicad
3. Generate position files from kicad, *in CSV format*
  1. Post-process `haxophone001-bottom-pos.csv` with  `scripts/jlcpcb-pos-csp-process.sh` to make it JLCPCB compatible.  Only the bottom position file is needed as only the bottom side of the PCB is populated.
4. Zip the `gerbers` directory.

The files required to place the order are:

1. zipped gerbers
2. BOM file: `haxophone001.csv`
3. CPL file: `haxophone001-bottom-pos.csv`

Also, in the order form, set 'Different Designs' to 3.
Also, pick LeadFree or ENIG Surface Finishes.
