Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2015-11-17T15:31:59+03:30

====== python ======
Created سه‌شنبه 17 نوامبر 2015

S = [x**2 for x in range(10)]
V = [2**i for i in range(13)]
M = [x for x in S if x % 2 == 0]
 
print S; print V; print M
[0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
[1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096]
[0, 4, 16, 36, 64]

== Making a list of evenly spaced numbers in a certain range ==
import numpy as np
//np.linspace(0,5,10) 					#give an array//
//np.linspace(0,5,10).tolist()			# give a list//
or
//[lower + x*(upper-lower)/length for x in range(length)]//

== Read file ==
''(hardway-Shaw)''
//from sys import argv//
//script, filename = argv//
//txt = open(filename)//
//print "Here's your file %r:" % filename//
//print txt.read()//

== importing functions: ==
//import filename [without extention]//
//filename.func()//
//or//
//from filename import *//


//print "Hello, World! sin(%(r)g)=%(s)12.5e" % vars()//
The syntax %(r)g indicates that a variable with name **r** is to be substituted
in the string, written in a format described by the character **g** . page 30  langtangen


== slicing ==
//y = np.arange(35).reshape(5,7)//
//y[1:5:2,::3]//

== List to array conversion ==
Use numpy.asarray:
//myarray = np.asarray(mylist)//

== NumPy array into List ==
Use tolist():
 //np.array([[1,2,3],[4,5,6]]).tolist()//
[[1, 2, 3], [4, 5, 6]]

== syntax highlighting in ipython console ==
sudo pip install  ipython --upgrade

== Jupyter ==
//pip install --upgrade pip//
//pip install jupyter//

== install scitools ==
sudo apt-get update
sudo apt-get install python-scitools


sudo pip install -U setuptools


== igraph ==
sudo apt-get update
sudo apt-get install python-igraph
**if get error try this**
sudo apt-get install -y libigraph0-dev
**and install igraph again**


== Matplotlib problem ==
UserWarning: Matplotlib is building the font cache using fc-list. This may take a moment.
import matplotlib as mpl
font_cache_path = mpl.get_cachedir() + '/fontList.cache'
%rm $font_cache_path



== matplotlib on cluster problem: ==
I had the same problem and I solved it by adding //plt.switch_backend('agg')// after //import matplotlib.pyplot as plt//

== plt.switch_backend('agg') ==

**or**
//import matplotlib//
//matplotlib.use('agg')//
//import matplotlib.pyplot as plt//

===== installing numba =====

sudo apt-get install llvm

pip install -i https://pypi.anaconda.org/sklam/simple llvmlite
sudo pip install numba

== or ==
conda install numba


== #warning "Using deprecated NumPy API, disable it by #defining NPY_NO_DEPRECATED_API NPY_1_7_API_VERSION" ==
#define NPY_NO_DEPRECATED_API NPY_1_7_API_VERSION



==== nest ====
The NEST executable will be installed to:
  /home/amin/program_source/nest/nest-2.12.0-build/bin/

Documentation and examples will be installed to:
  /home/amin/program_source/nest/nest-2.12.0-build/share/doc/nest/

PyNEST will be installed to:
	/home/amin/program_source/nest/nest-2.12.0-build/lib/python2.7/site-packages

To set necessary environment variables, add the following line
to your ~/.bashrc :
  source /home/amin/program_source/nest/nest-2.12.0-build/bin/nest_vars.sh

====== nest super-server ======
cmake -DCMAKE_INSTALL_PREFIX:PATH=/home/itng/prog/nest/nest-simulator-2.14.0-build  /home/itng/prog/nest/nest-simulator-2.14.0

The NEST executable will be installed to:
  /home/itng/prog/nest/nest-simulator-2.14.0-build/bin/

Documentation and examples will be installed to:
  /home/itng/prog/nest/nest-simulator-2.14.0-build/share/doc/nest/

PyNEST will be installed to:
	/home/itng/prog/nest/nest-simulator-2.14.0-build/lib/x86_64-linux-gnu/python2.7/site-packages

To set necessary environment variables, add the following line
to your ~/.bashrc :
  source /home/itng/prog/nest/nest-simulator-2.14.0-build/bin/nest_vars.sh
 make
 make install
 make installcheck



====== install package without sudo ======

https://gist.github.com/saurabhshri/46e4069164b87a708b39d947e4527298

wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py --user
cd .local/bin
./pip install <package_name> --user


== ================================================================== ==

The NEST executable will be installed to:
  /home/abolfazl/prog/install-dir/nest-simulator-2.14.0-build/bin/

Documentation and examples will be installed to:
  /home/abolfazl/prog/install-dir/nest-simulator-2.14.0-build/share/doc/nest/

PyNEST will be installed to:
	/home/abolfazl/prog/install-dir/nest-simulator-2.14.0-build/lib/python2.7/site-packages

To set necessary environment variables, add the following line
to your ~/.bashrc :
  source /home/abolfazl/prog/install-dir/nest-simulator-2.14.0-build/bin/nest_vars.sh

== ================================================================== ==

===== Install tkinter for Python =====
https://stackoverflow.com/questions/4783810/install-tkinter-for-python


===== upgrade a python package(module) =====
sudo pip install [package_name] --upgrade

====== install pygraphviz ======
https://stackoverflow.com/questions/40528048/pip-install-pygraphviz-no-package-libcgraph-found
sudo apt-get install python-dev graphviz libgraphviz-dev pkg-config
sudo pip install pygraphviz

# format usb drive from terminal
https://vitux.com/how-to-format-a-usb-drive-in-ubuntu/
df -h 
sudo umount /dev/sdb1
sudo mkfs.vfat /dev/sdb1 # fat
