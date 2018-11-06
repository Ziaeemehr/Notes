Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2015-04-13T14:52:40+04:30

====== bash operations ======
Created دوشنبه 13 آوریل 2015

برای تبدیل فایل متنی djvu به pdf:

//pdf2djvu -o outputfilename.djvu inputfilename.PDF//

== djvu to pdf ==
//ddjvu -format=pdf -quality=85 -verbose a.djvu a.pdf//

* If you don't care about colors and images you can get much smaller files if you drop the colors and use instead:
		//ddjvu -format=pdf -mode=black input.djvu output.pdf//
* Texts, codes and formulas looks perfectly, but most of the images are gone

**Using avconv to convert an avi video file to mkv**
avconv -i input_movie_name.avi -c copy output_movie_name.mp4
Extract 
//tar -xvzf community_images.tar.gz//
//tar jxf filename.tar.bz2//

//avconv -i inputfile.mov -c:v libx264 outputfile.mp4//

== ogg to mp3 ==
//avconv -i input.ogg -c:a libmp3lame -q:a 2 output.mp3//

== SCP: ==
//scp uwhpsc.tar.gz abolfazl@192.168.20.18:/data/home/abolfazl/myhpc//

ssh:
//ssh a.ziaeemehr@192.168.189.81//
//ssh abolfazl@192.168.20.18//

IP iasbs.ac.ir:
85.185.211.20 and 21
۲ بار باید ssh  کرد از خارج دانشگاه
get my local IP:
//ip addr | grep inet//

system information
//$ sudo lshw//

iasbs site pass
10%S98Q5l$z*cDi19hx1&869 

== Ubuntu Tip:Howto reduce PDF file size from command line ==
//gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf Tot.pdf//


== make environment variable permanently ==

//OMPPROJ=/home/abolfazl/Desktop/abolfazl/active_courses/parallel_course/openmp_project/codes; export OMPPROJ//
 
Temporal:
//cd to the desired directory//
//echo $PWD//
//export OMPPROJ=$PWD//
//cd $OMPPROJ//





//./shrinkpdf.sh in.pdf out.pdf//
[[./shrinkpdf.sh]] 

== Extract part of a video: ==
If for example you'd like to take a 48 second clip starting at 32 minutes and 15 seconds you'd use the following.
//avconv -ss 00:32:15 -i long-video.mp4 -codec copy -t 00:00:48 funny-clip.mp4//

== E:Encountered a section with no Package: header, E:Problem with MergeList ==
//sudo rm /var/lib/apt/lists/* -vf//
//sudo apt-get update//


== I want to copy a directory from one place to another folder. ==
//cp -a /path/from /path/to//

The -a flag turns on recursive behaviour (which can also be done with the -R flag), and will also attempt to preserve metadata such as file ownership, permissions, timestamps, links, etc.


=== Adding New Fonts to Your System ===
 //gksu nautilus//
//* create /usr/share/fonts/truetype///
//* copy font files to new location.//
//* then update your font cache.//
//sudo fc-cache -fv//

Method 2
//sudo ln -s /path/to/fontfiles /usr/share/fonts/fontfiles//
//* then update your font cache.//
//sudo fc-cache -fv//

* shutdown at a specific time
//shutdown -h 21:45//

== install farsi fonts ==
git clone https://github.com/fzerorubigd/persian-fonts-linux.git


open image from command line
xdg-open imagename.formantname


epub to pdf 
//ebook-convert file.pdf file.epub//
//ebook-convert file.pdf file.epub --enable-heuristics//

==== make gif ====
convert -delay 50 tmp_*.png movie.gif

==== HowTo: Linux Remove a PDF File Password Using Command Line Options ====
If You Don't Know The Password, Use Ghostscript Like This
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=unencrypted.pdf -c .setpdfwrite -f encrypted.pdf


== Jpg files to pdf ==
//sudo apt-get install imagemagick//
//convert *.jpg pictures.pdf//



===== 8 commands to check cpu information on Linux =====
less /proc/cpuinfo
cat /proc/cpuinfo | grep processor | wc -l
 lscpu
hardinfo | less
sudo lshw -class processor
nproc
sudo dmidecode -t 4

