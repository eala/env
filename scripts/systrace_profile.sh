TRACE_TAG="sched freq idle am wm gfx view binder_driver hal dalvik res bionic nnapi"
LOG_FILE="systrace_log.html"

# setup python 2.7
pyenv local 2.7.18

# check ANDROID_HOME set and run
if [ -z ${ANDROID_HOME} ]
then
    echo "ANDROID_HOME is not set yet"
else
    python $ANDROID_HOME/platform-tools/systrace/systrace.py -b 10000 -a * -o ${LOG_FILE} ${TRACE_TAG}
fi

