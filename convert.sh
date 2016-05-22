#! /bin/bash

##############
#Step 1: Convert a .md file to a .html file 
#Step 2: Convert a .html file to a .mobi file
##############

INFILE=$1.md;
AUXFILE=$1.html;
OUTFILE=$1.mobi;

#Step 1 
pandoc $INFILE > $AUXFILE;
echo '======html file created======';

#Step 2
ebook-convert $AUXFILE $OUTFILE;
echo '======mobi file created======';
