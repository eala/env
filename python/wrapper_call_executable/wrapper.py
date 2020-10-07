import sys
import os

lib_path = sys.argv[1]
exe_path = sys.argv[2]
src_img_path = sys.argv[3]

os.environ['LD_LIBRARY_PATH'] = lib_path
os.system(exe_path + " " + src_img_path)
