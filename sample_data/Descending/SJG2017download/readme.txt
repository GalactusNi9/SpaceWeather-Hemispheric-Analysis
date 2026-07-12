This Zip file contains software to download geomagnetic data
from the Edinburgh INTERMAGNET Geomagnetic Information Node.
To use the software in this zip file, follow these steps:

1.) Create a new directory.
2.) Extract the entire contents of this zip file to the directory.
3.) Start a command tool (also called DOS prompt)
4.) Change the current directory to be the directory you created
    in step 1 (use the 'cd' command)
5.) Execute the script by typing 'download.bat'.

The script keeps track of its progress through the list of files
to download. If it fails at any time, you can restart it and it will
resume at the point where it failed.

This software uses public domain URL downloading tools to retrieve
data from the GIN. One of these tools must be installed on your system
before running this script. Check whether these tools are available by
typing 'where curl' or 'where wget'. For further information on these
tools see the web sites listed below:

    Curl: http://curl.haxx.se/
    Wget: http://www.gnu.org/software/wget/

