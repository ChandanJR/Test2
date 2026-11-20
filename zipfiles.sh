//Shell script Find the files that are created 30 days ago zip them and send them to a remote machine //

#!/bin/bash

echo "Enter the name"
read name
if [ -d $name ]
then
find $name -type f -mtime -30 | zip zippedfiles.zip -@
scp $name user@192.14.18:/home/user
echo "Files zipped and sent"
else
echo "Directory not found"
fi