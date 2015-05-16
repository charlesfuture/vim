#
# config.mk.in -- autoconf template for Vim on Unix		vim:ts=8:sw=8:
#
# DO NOT EDIT config.mk!!  It will be overwritten by configure.
# Edit Makefile and run "make" or run ./configure with other arguments.
#
# Configure does not edit the makefile directly. This method is not the
# standard use of GNU autoconf, but it has two advantages:
#   a) The user can override every choice made by configure.
#   b) Modifications to the makefile are not lost when configure is run.
#
# I hope this is worth being nonstandard. jw.



VIMNAME		= vim
EXNAME		= ex
VIEWNAME	= view

CC		= gcc
DEFS		= -DHAVE_CONFIG_H
CFLAGS		= -g -O2 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1
CPPFLAGS	=  -I/usr/local/include
srcdir		= .

LDFLAGS		=  -L/usr/local/lib -Wl,--as-needed
LIBS		= -lm -ltinfo -lelf -lnsl  -lselinux  -liconv -ldl
TAGPRG		= ctags -I INIT+ --fields=+S

CPP		= gcc -E
CPP_MM		= M
DEPEND_CFLAGS_FILTER = | sed 's+-I */+-isystem /+g'
LINK_AS_NEEDED	= yes
X_CFLAGS	=  
X_LIBS_DIR	=  
X_PRE_LIBS	= 
X_EXTRA_LIBS	= 
X_LIBS		= 

LUA_LIBS	= -L/usr/lib -llua
LUA_SRC		= if_lua.c
LUA_OBJ		= objects/if_lua.o
LUA_CFLAGS	= -I/usr/include
LUA_PRO		= if_lua.pro

MZSCHEME_LIBS	= 
MZSCHEME_SRC	= 
MZSCHEME_OBJ	= 
MZSCHEME_CFLAGS	= 
MZSCHEME_PRO	= 
MZSCHEME_EXTRA  = 
MZSCHEME_MZC	= 

PERL		= 
PERLLIB		= 
PERL_LIBS	= 
SHRPENV		= 
PERL_SRC	= 
PERL_OBJ	= 
PERL_PRO	= 
PERL_CFLAGS	= 

PYTHON_SRC	= if_python.c
PYTHON_OBJ	= objects/if_python.o
PYTHON_CFLAGS	= -I/usr/include/python2.6 -DPYTHON_HOME='"/usr"' -pthread -fPIE
PYTHON_LIBS	= -L/usr/lib64/python2.6/config -lpython2.6 -lpthread -ldl -lutil -lm -Xlinker -export-dynamic
PYTHON_CONFDIR	= /usr/lib64/python2.6/config
PYTHON_GETPATH_CFLAGS = -DPYTHONPATH='":/usr/lib64/python2.6/site-packages/distribute-0.6.28-py2.6.egg:/usr/lib64/python2.6/site-packages/matplotlib-1.3.0-py2.6-linux-x86_64.egg:/usr/lib64/python2.6/site-packages/nose-1.3.0-py2.6.egg:/usr/lib64/python2.6/site-packages/pyparsing-2.0.1-py2.6.egg:/usr/lib64/python2.6/site-packages/python_dateutil-2.1-py2.6.egg:/usr/lib/python2.6/site-packages/python_memcached-1.53-py2.6.egg:/usr/lib/python2.6/site-packages/redis-2.8.0-py2.6.egg:/usr/lib/python2.6/site-packages/PIL-1.1.7-py2.6-linux-x86_64.egg:/usr/lib/python2.6/site-packages/numpy-1.7.1-py2.6-linux-x86_64.egg:/usr/lib/python2.6/site-packages/Cython-0.19.1-py2.6-linux-x86_64.egg:/usr/lib/python2.6/site-packages/scikit_image-0.8.2-py2.6-linux-x86_64.egg:/usr/lib/python2.6/site-packages/scipy-0.12.0-py2.6-linux-x86_64.egg:/usr/lib/python2.6/site-packages/BeautifulSoup-3.2.1-py2.6.egg:/usr/lib/python2.6/site-packages/Pyrex-0.9.9-py2.6.egg:/usr/lib/python2.6/site-packages/pip-1.4.1-py2.6.egg:/usr/lib/python2.6/site-packages/qrcode-4.0.4-py2.6.egg:/usr/lib/python2.6/site-packages/poster-0.8.1-py2.6.egg:/usr/lib/python2.6/site-packages/qiniu-6.1.6-py2.6.egg:/usr/lib/python2.6/site-packages/supervisor-4.0.0_dev-py2.6.egg:/usr/lib/python2.6/site-packages/meld3-1.0.0-py2.6.egg:/usr/lib/python2.6/site-packages/jieba-0.33-py2.6.egg:/usr/lib/python2.6/site-packages/python_Levenshtein-0.11.2-py2.6-linux-x86_64.egg:/usr/lib64/python26.zip:/usr/lib64/python2.6:/usr/lib64/python2.6/plat-linux2:/usr/lib64/python2.6/lib-tk:/usr/lib64/python2.6/lib-old:/usr/lib64/python2.6/lib-dynload:/usr/lib64/python2.6/site-packages:/usr/lib64/python2.6/site-packages/PIL:/usr/lib/python2.6/site-packages:/home/digua/project/modules:/usr/lib/python2.6/site-packages/setuptools-0.6c11-py2.6.egg-info"' -DPREFIX='"/usr"' -DEXEC_PREFIX='"/usr"'

PYTHON3_SRC	= 
PYTHON3_OBJ	= 
PYTHON3_CFLAGS	= 
PYTHON3_LIBS	= 
PYTHON3_CONFDIR	= 

TCL		= 
TCL_SRC		= 
TCL_OBJ		= 
TCL_PRO		= 
TCL_CFLAGS	= 
TCL_LIBS	= 

HANGULIN_SRC	= 
HANGULIN_OBJ	= 

WORKSHOP_SRC	= 
WORKSHOP_OBJ	= 

NETBEANS_SRC	= netbeans.c
NETBEANS_OBJ	= objects/netbeans.o

RUBY		= 
RUBY_SRC	= 
RUBY_OBJ	= 
RUBY_PRO	= 
RUBY_CFLAGS	= 
RUBY_LIBS	= 

SNIFF_SRC	= 
SNIFF_OBJ	= 

AWK		= gawk

STRIP		= strip

EXEEXT		= 

COMPILEDBY	= 

INSTALLVIMDIFF	= installvimdiff
INSTALLGVIMDIFF	= installgvimdiff
INSTALL_LANGS	= install-languages
INSTALL_TOOL_LANGS	= install-tool-languages

### sed command to fix quotes while creating pathdef.c
QUOTESED        = sed -e 's/[\\"]/\\&/g' -e 's/\\"/"/' -e 's/\\";$$/";/'

### Line break character as octal number for "tr"
NL		= "\\012"

### Top directory for everything
prefix		= /usr

### Top directory for the binary
exec_prefix	= ${prefix}

### Prefix for location of data files
BINDIR		= ${exec_prefix}/bin

### For autoconf 2.60 and later (avoid a warning)
datarootdir	= ${prefix}/share

### Prefix for location of data files
DATADIR		= ${datarootdir}

### Prefix for location of man pages
MANDIR		= ${datarootdir}/man

### Do we have a GUI
GUI_INC_LOC	= 
GUI_LIB_LOC	= 
GUI_SRC		= $(NONE_SRC)
GUI_OBJ		= $(NONE_OBJ)
GUI_DEFS	= $(NONE_DEFS)
GUI_IPATH	= $(NONE_IPATH)
GUI_LIBS_DIR	= $(NONE_LIBS_DIR)
GUI_LIBS1	= $(NONE_LIBS1)
GUI_LIBS2	= $(NONE_LIBS2)
GUI_INSTALL	= $(NONE_INSTALL)
GUI_TARGETS	= $(NONE_TARGETS)
GUI_MAN_TARGETS	= $(NONE_MAN_TARGETS)
GUI_TESTTARGET	= $(NONE_TESTTARGET)
GUI_TESTARG	= $(NONE_TESTARG)
GUI_BUNDLE	= $(NONE_BUNDLE)
NARROW_PROTO	= 
GUI_X_LIBS	= 
MOTIF_LIBNAME	= 
GTK_LIBNAME	= 

### Any OS dependent extra source and object file
OS_EXTRA_SRC	= 
OS_EXTRA_OBJ	= 

### If the *.po files are to be translated to *.mo files.
MAKEMO		= yes

# Make sure that "make first" will run "make all" once configure has done its
# work.  This is needed when using the Makefile in the top directory.
first: all
