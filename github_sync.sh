#!/usr/bin/bash

cd ~/obsidian_notes || exit

git_st=$(git status)
num=$(awk 'BEGIN{print gsub(ARGV[2],"",ARGV[1])}' "$git_st" "modified")
if ! [[ "$git_st" == *".obsidian/workspace"* && $num -eq 1 ]]; then
  input="Backup: "$(date)
   echo "$input" >> ~/github_sync_logs.log
   git status >> ~/github_sync_logs.log
   git add .
   git commit -m"$input"
   git push >> ~/github_sync_logs.log
   printf "\n" >> ~/github_sync_logs.log
fi
