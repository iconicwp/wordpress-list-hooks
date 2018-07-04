#!/usr/bin/env bash

cd ../

# Config.
hookPrefix='iconic_wds_'
output='./tasks/hooks.txt'
exclude={vendor,inc/vendor,node_modules,tasks}

# Execute.
replace='\<tr\>\<td\>\3\<\/td\>\<td\>\2\<\/td\>\<td\>\1\<\/td\>\<\/tr\>'

ggrep -oPR --exclude-dir=$exclude --include="*.php" "do_action\( '$hookPrefix.*|apply_filters\( '$hookPrefix.*" . /dev/null > $output
perl -pi -e "s/.\/(.*):apply_(filter)s\( '(.*?)',.*/$replace/g" $output
perl -pi -e "s/.\/(.*):apply_(filter)s\( '(.*?)'.*/$replace/g" $output
perl -pi -e "s/.\/(.*):do_(action)\( '(.*?)',.*/$replace/g" $output
perl -pi -e "s/.\/(.*):do_(action)\( '(.*?)'.*/$replace/g" $output
sort -uo $output $output
