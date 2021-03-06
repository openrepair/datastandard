#!/bin/bash

case $1 in
	-file ) infile=$2	
			;;
	--help | * ) 	echo "usage -file '<filename>.docx>'"
					exit 1
					;;
esac

echo -n "Confirm to parse file '$infile' (y/n) > "
read response
if [ "$response" != "y" ]; then
    echo "Aborting script"
    exit 1
fi

outfile="source.rst"

pandoc -f docx -t rst -o $outfile "$infile"

filenames=( 'about' 'governance' 'standard' 'document')

awk '
/^Section/ {++count; newfile="file"count".txt"; print newfile}
newfile {print line > newfile}
{line=$0}
' "$outfile"

for ((i = 1 ; i < 5 ; i++)); do    

    echo "mv file$i.txt ${filenames[$i-1]}.rst"
    
    # remove the "Section" headers
    sed -i s/"^Section [1-9]: "// "file$i.txt"

    for ((l = 1 ; l < 5 ; l++)); do    

        # fix line wrap in lists (up to 4 lines per list item)
        sed -i '
        /^-[[:blank:]{2}]/ {
        # found "-  " starting 1st line
        # read next line
        N
        # look for 7 spaces starting 2nd line
        s/\n.*[[:blank:]]\{7\}/ /
        }' "file$i.txt"

    done

    # rename the files
    mv "file$i.txt" "${filenames[$i-1]}.rst"
done

rm $outfile



