#!/bin/bash
echo "deleting firmwarecheckers..."
rm -Rf /usr/libexec/firmwarecheckers
if [ $? -eq 0 ]; then
	echo -e "done."
	exit 0;
else
	echo -e "failed! Perhaps the files doesn't exist."
	exit 1;
fi
