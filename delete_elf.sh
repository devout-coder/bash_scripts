#!/usr/bin/bash

# COMMAND_OUTPUT = $(find ~/code_repo/dsa_problems -exec file {} \; | grep -i elf | cut -d ':' -f 1 | awk '{$1=$1};1')
# FILE_LOCATIONS=$(echo "$COMMAND_OUTPUT" | cut -d ':' -f 1 | awk '{$1=$1};1')

# Print the extracted file locations
# echo $(find ~/code_repo/dsa_problems -exec file {} \; | grep -i elf | cut -d ':' -f 1 | awk '{$1=$1};1') 
# find ~/code_repo/dsa_problems -exec file {} \; -delete'
find ~/code_repo/dsa_problems -type f -executable -delete