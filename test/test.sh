#!/bin/bash


text="Section 1: About Open Repair Alliance
=====================================

The initial objective of the Open Repair Alliance is to help
organisations involved in community repair to better harmonise the way
we collect and share information about successes and challenges in
repairing small electrical and consumer electronic devices, to increase
the visibility and the impact of the work we all do.


Section 2: Governance and Membership
====================================

Open Repair Alliance’s founding members are: Anstiftung Foundation,
Fixit Clinic, iFixit, The Repair Cafe Foundation and The Restart
Project.


Section 3: The Standard
=======================

As members of the Open Repair Alliance, organisations are committed to
share data that is accessible, useful and useable for a range of
partners.


Section 4: Document Information
===============================

The Open Repair Data Standard and supporting documentation is licensed
under the [*Creative Commons Attribution-ShareAlike 4.0 (CC
BY-SA)*](https://creativecommons.org/licenses/by/4.0/) license."

# echo $text | grep "^Section [1-4]:"

# echo $text | sed -e s/"^Section [1-4]: "//

# while read line;do
#     echo $line 
# done < <(awk '/^Section [1-4]: / {print $0;}' $text)

# echo $text | (awk '/^Section/ {print $0 | sed -e s/"^Section [1-4]: "//}')

#echo $text | awk '/^Section/ {print $0;}' | sed -e s/"^Section [1-4]: "// 

#sed -i -e s/"^Section [1-4]: "// -e '/new/d' file


#grep -E '^[[:space:]]\{7\}' test.rst

#sed -n /"^[[:space:]]\{7\}"/p test.rst

#sed -i.tmp s/"^[[:space:]]\{7\}"/"FOO"/ test.rst

sed -n '
/^-[[:blank:]{2}]/ {
# found "-  " - read in next line
	N
# look for 7 spaces on the second line
	/\n.*[[:blank:]]\{7\}/ p
}
{
# found "-  " - read in next line
	N
# look for 7 spaces on the second line
	/\n.*[[:blank:]]\{7\}/ p
}
' test.rst

sed -i.tmp '
/^-[[:blank:]{2}]/ {
    # found "-  " starting 1st line
    # read next line
    N
    # look for 7 spaces starting 2nd line
    s/\n.*[[:blank:]]\{7\}/ /
    # read next line
    N
    # look for 7 spaces starting 3rd line
    s/\n.*[[:blank:]]\{7\}/ /
    # read next line
    N
    # look for 7 spaces starting 4th line
    s/\n.*[[:blank:]]\{7\}/ /
}
' test.rst
