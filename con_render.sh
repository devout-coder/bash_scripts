#!/usr/bin/bash

/usr/bin/curl https://doneify.onrender.com

input="conned render at: "`date`
logs_path="/home/pranil/code_repo/bash_scripts/logs/con_render_logs.log"
echo $input >> $logs_path 
