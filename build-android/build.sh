#!/bin/sh

if test "x$ANDROID_NDK" = x ; then
  echo should set ANDROID_NDK before running this script.
  exit 1
fi

$ANDROID_NDK/ndk-build APP_BUILD_SCRIPT=./Android.mk NDK_APPLICATION_MK=./Application.mk NDK_PROJECT_PATH=.
