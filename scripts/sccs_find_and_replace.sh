#!/bin/bash
    sgrep -l $1 * | xargs sccs edit
    sgrep -l $1 * | xargs sed -i 's/'$1'/'$2'/g'  
