#!/bin/bash

LINK_ARCHIVE=archive
# remove symlink file if exists
if [ -L $LINK_ARCHIVE ]; then
	rm $LINK_ARCHIVE
fi
ln -s ../../../../../data/archive $LINK_ARCHIVE

LINK_LIBS=libs
# remove symlink file if exists
if [ -L $LINK_LIBS ]; then
	rm $LINK_LIBS
fi
ln -s ../../../disco-imagen/libs $LINK_LIBS
