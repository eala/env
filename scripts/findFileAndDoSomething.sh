# find file name with dbg and use Linux rename utility
# {} represents the find string
# \; means the end of the script

find . -iname "*dbg*" -exec rename _dbg.txt .txt '{}' \;

