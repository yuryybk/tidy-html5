LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

src_files = \
access.c   clean.c    gdoc.c     streamio.c tmbstr.c alloc.c    attrs.c    config.c   iconvtc.c  mappedio.c tagask.c   utf8.c \
buffio.c   entities.c istack.c   parser.c   tags.c     win32tc.c attrdict.c charsets.c fileio.c   lexer.c    pprint.c  tidylib.c message.c language.c messageobj.c

src_dir := $(LOCAL_PATH)/../src

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../include
LOCAL_MODULE := tidy
LOCAL_SRC_FILES := $(addprefix $(src_dir)/, $(src_files))

include $(BUILD_SHARED_LIBRARY)
