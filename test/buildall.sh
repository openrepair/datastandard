#!/bin/bash

case $1 in
	-file ) infile=$2	
			;;
	--help | * ) 	echo "usage -file '<filename>]' (without extension)"
					exit 1
					;;
esac

from="/media/sf_shareshare/restart/ORDS/"
to="/var/www/html/datastandard/"

doc="$infile.docx"
pdf="$infile.pdf"

echo $doc

cp "$from$doc" "$to$doc"
cp "$from$pdf" "${to}_pdf/${pdf}"

bash prepare.sh -file "$doc" && make html

rm -R "${from}html"
cp -R "${to}_build/html" "${from}"





