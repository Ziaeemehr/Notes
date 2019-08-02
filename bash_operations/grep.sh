Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2015-12-01T10:32:58+03:30

====== grep ======
Created سه‌شنبه 01 دسامبر 2015

**Syntax:**
//grep "literal_string" filename//

== Case insensitive search using grep -i ==
//grep -i "string" FILE//

== Match regular expression in files ==
//grep "REGEX" filename//
//grep "lines.*empty" demo_file//      
it searches for all the pattern that starts with “lines” and ends with “empty” with anything in-between.

== Checking for full words, not for sub-strings using grep -w ==
searching only for the word “is”
 //grep -iw "is" demo_file//

== Displaying lines before/after/around the match using grep -A, -B and -C ==
**Display N lines after match**
Syntax:
grep -A <N> "string" FILENAME
//grep -A 3 -i "example" demo_text//

**Display N lines before match**
Syntax:
grep -B <N> "string" FILENAME
//grep -B 2 "single WORD" demo_text//

**Display N lines around match**
//grep -C 2 "Example" demo_text//

grep -v "go" demo_text
export GREP_OPTIONS='--color=auto' GREP_COLOR='100;8'
grep this demo_file
grep -r "ramesh" *
grep -v -e "pattern" -e "pattern"
grep -v "go" demo_text
grep -v -e "pattern" -e "pattern"
grep -v -e "a" -e "b" -e "c" test-file.txt
**Counting the number of matches using grep -c**
grep -c "pattern" filename
grep -c "go" demo_text
grep -v -c this demo_file

**Display only the file names which matches the given pattern using grep -l**
grep -l this demo_*               # (L hast)

grep -o "is.*line" demo_file
**Show the position of match in the line**
grep -o -b "pattern" file

== # Print line number 52 ==
sed -n '52p' # method 1
sed '52!d' # method 2
sed '52q;d' # method 3
**use awk to print line 52 of a list of files like this:**
awk 'FNR==52' Files*
awk 'FNR==3' ./t*/earr.dat


== grep in all directories ==
grep -R --include="*.c" --exclude-dir={DEF} writeFile /path/to/XYZ

	-R means recursive, so it will go into subdirectories of the directory you're grepping through
	--include="*.c" means "look for files ending in .c"
	--exclude-dir={DEF} means "exclude directories named DEF. If you want to exclude multiple directories, do this: --exclude-dir={DEF,GBA,XYZ}
	writeFile is the pattern you're grepping for
	/path/to/XYZ is the path to the directory you want to grep through.
Note that these flags apply to GNU grep, might be different if you're using BSD/SysV/AIX grep. If you're using Linux/GNU grep utils you should be fine.


====== Command Line Tutorials – Finding & Grepping ======
https://quickleft.com/blog/command-line-tutorials-finding-grepping/

https://www.cyberciti.biz/faq/grep-subdirectory-for-files-on-linux-bsd-osx-unix-oses/



fgrep -r word








