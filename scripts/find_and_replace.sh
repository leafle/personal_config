#!/bin/bash
     for fl in *.cc; do
     sccs edit $fl
     mv $fl $fl.old
     sed 's/stagd/femd/g' $fl.old > $fl
     #rm -f $fl.old
     done
