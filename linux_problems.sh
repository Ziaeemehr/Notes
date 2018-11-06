Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2015-06-07T22:59:12+04:30

====== linux problems ======
Created یکشنبه 07 ژوئن 2015


Re: E:Encountered a section with no Package: header, E:Problem with MergeList

	[[http://ubuntuforums.org/showthread.php?t=863742|try]]
	sudo rm /var/lib/apt/lists/* -vf
	sudo apt-get update


== How can you completely remove a package? ==
//sudo apt-get --purge autoremove//
show IP addres:
search in "//google what is my ip"//
$ //ip addr show//


== Something is downloading in background linux? ==
you're on the right track. iftop will show you what addresses your system is communicating with. the next time this starts happening, launch it to see where the data is going, and in another window, launch netstat -tanp. this will show you all active connections by ip address, and the -p flag will show what process on your system is responsible for the socket.
you can then correlate the two together and go from there.
http://programming.nullanswer.com/question/24289276

== remove and reinstall latex ==
//sudo apt-get remove texlive//
//sudo apt-get autoremove//
//sudo apt-get remove tex-common//
//sudo apt-get autoremove//
install from community

== راهنمای نصب تکلایو در اوبونتو ترمینال ==
http://www.parsilatex.com/mediawiki/index.php?title=%D8%B1%D8%A7%D9%87%D9%86%D9%85%D8%A7%DB%8C_%D9%86%D8%B5%D8%A8_%D8%AA%DA%A9%E2%80%8C%D9%84%D8%A7%DB%8C%D9%88_%D8%AF%D8%B1_%D9%84%DB%8C%D9%86%D9%88%DA%A9%D8%B3
حرف O (اُ لاتین) را بزنید تا وارد قسمت Options شوید.
حرف L را بزنید تا symlinkها ایجاد شوند.
با این کار symlinkها ایجاد می‌شوند و نیازی به اضافه کردن‌شان به path سیستم نیست.
۳ تا اینتر بزنید تا مسیرهایی که پیشنهاد می‌دهد تأیید شوند. می‌توانید تغییر دهید، ولی پیشنهاد نمی‌شود.
حرف Y را بزنید تا بارگیری به‌روزرسانی‌های بسته‌ها بعد اتمام نصب انجام نشود. (به‌دلیل ایجاد مشکل احتمالی پیشنهاد نمی‌شود. مگر اینکه سرعت اینترنت عالی داشته باشید. پیشنهاد می‌شود بعد اتمام نصب، این کار را خودتان به جای استفاده از این گزینه، انجام دهید. یا بهتر از آن، مخزن تک‌لایو را بروزرسانی کنید و از روی آن نصب کنید.)
حرف R را بزنید که به منوی اصلی برگردید.
حرف I (آی لاتین) را زدم که نصب شروع بشه. 


== To shutdown run the command ==
//sudo shutdown -P 60//
That is 60 mins.
You could do
//sudo shutdown -P 1:00//
to shutdown at 1am and
//sudo shutdown -P now//
sudo poweroff


== Cannot open source file “bits/c++config.h” error with icpc ==
in bashrc:
replace 4.8 by your g++ version
//export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/usr/include/x86_64-linux-gnu/c++/4.8//

== Password Protect Folder With Cryptkeeper ==
sudo apt-get install cryptkeeper encfs
sudo fusermount -u /home/sk/unixmen/ENCRYPTED FOLDER 


== problem of executable files and folders copied from external hard drive ==
chmod -R 755
[[http://askubuntu.com/questions/23679/file-permissions-on-files-copied-from-usb-do-not-match-file-permissions-of-files|File Permissions on files copied from USB do not match File Permissions of files I create in Ubuntu]]
rsync --chmod=CHMOD source destination
Replace CHMOD by e.g. 0644 will give read/write access to the owner and read-only acess to all other users. For further copy options see rsync manpage.


== adding a path in bashrc for matlab: ==
//export PATH=$PATH:/usr/local/MATLAB/R2016b/bin//

== python 2.7 on  CentOS Problem ==
yum install -y python27
$ vi /etc/ld.so.conf.d/python27.conf
[[/opt/rh/python27/root/usr/lib64/]]
$ ldconfig
$ python2.7

== Find out current working directory of a running process? ==
pwdx <ID>

== How to Connect with SFTP ==
sftp username@remote_hostname_or_IP

== Eenable ssh in mint ==
//sudo apt-get install openssh-server//


== add address of headerfile peranently to .bashrc to tell g++ read from there: ==
//export CPATH=/usr/include/igraph//
//g++ igraph_test.cpp -ligraph -o igraph_test//

first line can be added to .bashrc


=== sublime 3 ===


sudo apt-get update
sudo apt-get install sublime-text

register 3143

—– BEGIN LICENSE —–
TwitterInc
200 User License
EA7E-890007
1D77F72E 390CDD93 4DCBA022 FAF60790
61AA12C0 A37081C5 D0316412 4584D136
94D7F7D4 95BC8C1C 527DA828 560BB037
D1EDDD8C AE7B379F 50C9D69D B35179EF
2FE898C4 8E4277A8 555CE714 E1FB0E43
D5D52613 C3D12E98 BC49967F 7652EED2
9D2D2E61 67610860 6D338B72 5CF95C69
E36B85CC 84991F19 7575D828 470A92AB
—— END LICENSE ——




====== ssh-keygen ssh with out password ======
https://www.linuxtrainingacademy.com/ssh-login-without-password/



====== fatal error: Python.h: No such file or directory ======
sudo apt-get install python-dev




===== open rar files? =====
unrar e file.rar

===== touchpad right ckick =====
https://forums.linuxmint.com/viewtopic.php?t=107118


===== how to know operating system OS trminal =====
cat [[/etc/*-release]]


====== mint did not mount usb automatically ======
sudo apt-get install hfsprogs


====== install dictionary and audio in goldendict ======
https://thanhsiang.org/faqing/node/105

====== FFTW3 ======
Ubuntu only: If you want to install FFTW3 (serial version) in your local Ubuntu you can skip this installation section altogether and just run:

 sudo apt-get install libfftw3-dev libfftw3-doc



===== problem in gsl library  to find libgsl.so.23 =====
https://stackoverflow.com/questions/22222666/error-while-loading-shared-libraries-libgsl-so-0-cannot-open-shared-object-fil/36600878
find / -name "libgsl.so.23"
quick and dirty:

**LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib**
**export LD_LIBRARY_PATH**

add these to .bashrc
**export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib**
**export CFLAGS="-I/usr/local/include"**
**export LDFLAGS="-L/usr/local/lib"**



====== update vscode ======
wget https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable -O /tmp/code_latest_amd64.deb
sudo dpkg -i [[/tmp/code_latest_amd64.deb]]



===== For Sublime-Text-3: =====
https://askubuntu.com/questions/172698/how-do-i-install-sublime-text-2-3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer



====== How to Find Out Top Directories and Files (Disk Space) in Linux ======
https://www.tecmint.com/find-top-large-directories-and-files-sizes-in-linux/
Run the following command to find out top biggest directories under /home partition.
# du -a /home | sort -n -r | head -n 5
If you want to display the biggest directories in the current working directory, run:
# du -a | sort -n -r | head -n 5
Some of you would like to display the above result in human readable format. i.e you might want to display the largest files in KB, MB, or GB.
# du -hs * | sort -rh | head -5
To display the largest folders/files including the sub-directories, run:
# du -Sh | sort -rh | head -5

====== How can I get a count of files in a directory using the command line? ======
ls | wc -l

====== How can I empty the trash using terminal? ======
rm -rf [[~/.local/share/Trash/*]]


====== add second hard to linux ======
Adding a New Disk Drive to an Ubuntu Linux System
https://www.techotopia.com/index.php/Adding_a_New_Disk_Drive_to_an_Ubuntu_Linux_System


==== To just kill all background jobs managed by bash, do ====
kill $(jobs -p)

====== Matlab permission in ./matlab ======
sudo chown -R $USER:$USER myfolder



====== install gsl library ======
https://coral.ise.lehigh.edu/jild13/2016/07/11/hello/
sudo apt-get install libgsl-dev

====== installing graph-tool ======

===== install CGAL library =====
# Debian or Linux Mint
sudo apt-get install libcgal-dev # install the CGAL library
sudo apt-get install libcgal-demo # install the CGAL demos

libcairomm from synaptic
https://lists.skewed.de/pipermail/graph-tool/2013-November/001094.html

================================================================================
							 CONFIGURATION SUMMARY                              
================================================================================
Using python version:   2.7.12
Python interpreter:     /usr/bin/python
Installation path:      /usr/lib/python2.7/dist-packages/graph_tool

C++ compiler (CXX):     g++ -std=gnu++14
C++ compiler version:   5.5.0

Prefix:                 /usr/local
Pkgconfigdir:           ${libdir}/pkgconfig

Python CPP flags:       -I/usr/include/python2.7
Python LD flags:        -L/usr/lib -lpython2.7
Boost CPP flags:        -pthread -I/usr/include
Boost LD flags:         -lboost_iostreams -lboost_python -lboost_regex -lboost_context -lboost_coroutine
Numpy CPP flags:        -I/usr/lib/python2.7/dist-packages/numpy/core/include
Sparsehash CPP flags:   -I/usr/local/include
CGAL CPP flags:         -I/usr/include
CGAL LD flags:          -L/usr/lib -lCGAL -lCGAL_Core -lgmp -lboost_thread -lpthread
Expat CPP flags:        -I/usr/include
Expat LD flags:         -L/usr/lib -lexpat
Cairomm CPP flags:       -I/usr/include/cairomm-1.0 -I/usr/lib/x86_64-linux-gnu/cairomm-1.0/include -I/usr/include/cairo -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/pixman-1 -I/usr/include/freetype2 -I/usr/include/libpng12 -I/usr/include/sigc++-2.0 -I/usr/lib/x86_64-linux-gnu/sigc++-2.0/include
Cairomm LD flags:       -lcairomm-1.0 -lcairo -lsigc-2.0
OpenMP compiler flags:  -fopenmp
OpenMP LD flags:        
Extra CPPFLAGS:         -DNDEBUG 
Extra CXXFLAGS:         -fopenmp -O3 -fvisibility=default -fvisibility-inlines-hidden -Wno-deprecated -Wall -Wextra -ftemplate-backtrace-limit=0 
Extra LDFLAGS:          -L/usr/local/lib

Using OpenMP:           yes
Using sparsehash:       yes
Using cairo:            yes
================================================================================




====== kill all a user's jobs ======

===== killall -u username =====

====== Find Largest Directories in Linux ======
**du -a /home | sort -n -r | head -n 5**
**du -a | sort -n -r | head -n 5**

===== How do I install Adobe Acrobat in Ubuntu 16.04? =====
I followed the tips below on Kubuntu 16.04 64 bit:
sudo add-apt-repository "deb http://archive.canonical.com/ precise partner"
sudo apt-get update
sudo apt install adobereader-enu

After properly installed Adobe Reader, don’t forget to remove the Canonical Partners repository for Precise:

sudo add-apt-repository -r "deb http://archive.canonical.com/ precise partner"
sudo apt update





