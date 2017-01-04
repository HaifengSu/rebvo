

CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

CONFIG+=staticlib
TEMPLATE=lib

DESTDIR=./
OBJECTS_DIR=../build/rebvolib
TARGET=rebvolib

INCLUDEPATH += ../include/

LIBS += -L/usr/local/lib \
    -lX11 \
    -lv4l2 \
    -lm \
    -lgd\
    -llapack #-lNE10

QMAKE_CXXFLAGS += -std=c++11 -Wno-unused-parameter -Wno-sign-compare # -mcpu=cortex-a15 -mtune=cortex-a15 -mfpu=neon -O2
QMAKE_CFLAGS += -std=c++11 -Wno-unused-parameter -Wno-sign-compare # -mcpu=cortex-a15 -mtune=cortex-a15 -mfpu=neon -O2
QMAKE_LFLAGS += -std=c++11



SOURCES +=  ../src/rebvo/rebvo.cpp\
    ../src/rebvo/rebvo_first_t.cpp \
    ../src/rebvo/rebvo_second_t.cpp \
    ../src/rebvo/rebvo_third_t.cpp \
    ../src/visualizer/visualizer.cpp\
    ../src/VideoLib/video_io.cpp \
    ../src/VideoLib/video_mfc.cpp\
    ../src/VideoLib/v4lcam.cpp \
    ../src/VideoLib/video_mjpeg.cpp \
    ../src/VideoLib/video_encoder.cpp \
    ../src/VideoLib/videocam.cpp\
    ../src/VideoLib/simcam.cpp \
    ../src/VideoLib/datasetcam.cpp \
    ../src/VideoLib/videodecoder.cpp\
    ../src/VideoLib/imugrabber.cpp\
    ../src/VideoLib/customcam.cpp\
    ../src/mtracklib/gl_viewer.cpp \
    ../src/mtracklib/iimage.cpp \
    ../src/mtracklib/sspace.cpp \
    ../src/mtracklib/iigauss.cpp \
    ../src/mtracklib/net_keypoint.cpp \
    ../src/mtracklib/edge_finder.cpp \
    ../src/mtracklib/edge_tracker.cpp \
    ../src/mtracklib/global_tracker.cpp \
    ../src/mtracklib/keyframe.cpp \
    ../src/mtracklib/scaleestimator.cpp \
    ../src/mtracklib/image_undistort.cpp \
    ../src/mtracklib/depth_filler.cpp \
    ../src/UtilLib/ttimer.cpp\
    ../src/UtilLib/ne10wrapper.cpp\
    ../src/UtilLib/configurator.cpp \
    ../src/UtilLib/minimizer.cpp \
    ../src/UtilLib/libcrc.cpp \
    ../src/CommLib/udp_port.cpp

HEADERS += ../include/Blocks/incfiles.h \
    ../include/Blocks/rebvo.h\
    ../include/visualizer/visualizer.h\
    ../include/VideoLib/video_io.h \
    ../include/VideoLib/image.h \
    ../include/VideoLib/video_mfc.h\
    ../include/VideoLib/v4lcam.h \
    ../include/VideoLib/video_mjpeg.h \
    ../include/VideoLib/video_encoder.h \
    ../include/VideoLib/videocam.h\
    ../include/VideoLib/simcam.h \
    ../include/VideoLib/common_types.h \
    ../include/VideoLib/datasetcam.h \
    ../include/VideoLib/videodecoder.h\
    ../include/VideoLib/imugrabber.h\
    ../include/VideoLib/customcam.h\
    ../include/mtracklib/iimage.h \
    ../include/mtracklib/sspace.h \
    ../include/mtracklib/iigauss.h \
    ../include/mtracklib/edge_tracker.h \
    ../include/mtracklib/global_tracker.h\
    ../include/mtracklib/net_keypoint.h \
    ../include/mtracklib/nav_data_defs.h \
    ../include/mtracklib/edge_finder.h \
    ../include/mtracklib/keyframe.h \
    ../include/mtracklib/scaleestimator.h \
    ../include/mtracklib/image_undistort.h \
    ../include/mtracklib/depth_filler.h \
    ../include/mtracklib/gl_viewer.h \
    ../include/UtilLib/configurator.h\
    ../include/UtilLib/util.h \
    ../include/UtilLib/NormalDistribution.h \
    ../include/UtilLib/ne10wrapper.h\
    ../include/UtilLib/linefitting.h \
    ../include/UtilLib/cam_model.h \
    ../include/UtilLib/timer.h\
    ../include/UtilLib/fvector.h\
    ../include/UtilLib/ttimer.h\
    ../include/UtilLib/pipeline.h\
    ../include/UtilLib/CircList.h\
    ../include/UtilLib/minimizer.h \
    ../include/UtilLib/libcrc.h \
    ../include/CommLib/udp_port.h

