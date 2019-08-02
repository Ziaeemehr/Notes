Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2015-10-02T14:12:01+03:30

====== shell ======
Created جمعه 02 اكتبر 2015

**lscpu**
The lscpu command reports information about the cpu and processing units. It does not have any further options or functionality.

**inxi -Fx**
Inxi is a 10K line mega bash script that fetches hardware details from multiple different sources and commands on the system, and generates a beautiful looking report that non technical users can read easily.

du -hs /path/to/directory


=== Tar Command Examples in Linux ===

====== extract tar.gz ======
**tar -xzf file.tar.gz**

====== tar file without compresion ======
tar cf file.tar folder

== 1. Create tar Archive File ==
//tar -cvf tecmint-14-09-12.tar /home/tecmint///
The below example command will create a tar archive file tecmint-14-09-12.tar for a directory /home/tecmint in current working directory.

	c – Creates a new .tar archive file.
	v – Verbosely show the .tar file progress.
	f – File name type of the archive file.


====== 2. Create tar.gz Archive File ======

//# tar cvzf MyImages-14-09-12.tar.gz /home/MyImages//
OR
//# tar cvzf MyImages-14-09-12.tgz /home/MyImages//

== 3. Create tar.bz2 Archive File ==

== Get a count of all files and directories in the current directory ==
echo * | wc
or 
ls | wc -l

== Matlab installation problem in Mint Mate: ==
	Install JRE if you don't have it already.
	//sudo apt-get install openjdk-7-jre//
	Invoke the installer with -javadir option
   //sudo ./install -javadir /usr/lib/jvm/java-8-openjdk-amd64/jre//


== How to set chmod for a folder and all of its subfolders and files in Linux Ubuntu Terminal ==
To change all the directories to 755 (-rwxr-xr-x):
//find /opt/lampp/htdocs -type d -exec chmod 755 {} \;//
To change all the files to 644 (-rw-r--r--):
//find /opt/lampp/htdocs -type f -exec chmod 644 {} \;//



== Add PATH to .bashrc ==

//export PATH="/usr/local/share/rsi/idl/bin:/home/username/anaconda/bin:$PATH"//
One option is to just add the line, so that you have tow lines changing the path:

//export PATH="/home/username/anaconda/bin:$PATH"//
//export PATH="/usr/local/share/rsi/idl/bin:$PATH"//    
The other option is to just change the existing line to this:
//export PATH="/home/username/anaconda/bin:/usr/local/share/rsi/idl/bin:$PATH"//


== How can I split a PDF file into single pages quickly (i.e. from the Terminal command line)? ==
pdfseparate document.pdf %d.pdf

== Merge pdf ==
pdfunite input1.pdf input2.pdf input3.pdf output.pdf


=== Cropping multiple images the same way (short tutorial) ===

mogrify -crop {Width}x{Height}+{left}+{top} image.png
get the numbers from  Pix image viewer

$ mogrify -crop 712x566+38+33 *.png


====== find ======
find ~ -type f -name setup.py
find ~/ -type f -name "postgis-2.0.0"
