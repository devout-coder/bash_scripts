#!/usr/bin/bash

#for obsidian notes

cd ~/all_synced/ob_notes 

git_st=`git status`
logs_path="/home/pranil/code_repo/bash_scripts/logs/github_sync_logs.log"
num=$(awk 'BEGIN{print gsub(ARGV[2],"",ARGV[1])}' "$git_st" "modified")
if ! [[ "$git_st" == *".obsidian/workspace"* && $num -eq 1 ]]; then
   input="Backup: "`date`
   echo $input >> $logs_path
   git status >> $logs_path 
   git add .
   git commit -m"$input"
   git push >> $logs_path 
   echo \n >> $logs_path 
fi

#for my configs


cd ~/.config 

git_st=`git status`
logs_path="/home/pranil/code_repo/bash_scripts/logs/config_sync_logs.log"
input="Backup: "`date`
echo $input >> $logs_path
git status >> $logs_path 
git add .
git commit -m"$input"
git push >> $logs_path 
echo \n >> $logs_path 

