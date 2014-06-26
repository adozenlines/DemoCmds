#!/bin/sh
# Type './build.sh' to make Android native libraries.
# Type './build.sh -B' to rebuild the native libraries.
# Type `./build.sh -swig` to re-generate JNI classes too.
#
if [ ! -f ../../TouchVGCore/android/build.sh ] ; then
    git clone https://github.com/touchvg/TouchVGCore ../../TouchVGCore
fi
cd ../../TouchVGCore/android; sh build.sh $1 $2; cd ../../DemoCmds/android
cd DemoCmds/jni; sh build.sh $1 $2; cd ../..
