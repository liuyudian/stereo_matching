QT += core
QT -= gui

TARGET = stereo_matching
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += \
    cpu_src/BM.cpp \
    cpu_src/cost.cpp \
    cpu_src/SGM.cpp \
    cpu_src/Solver.cpp \
    cpu_src/utils.cpp \
    demo1.cpp \
    demo2.cpp

HEADERS += \
    cpu_inc/BM.h \
    cpu_inc/cost.h \
    cpu_inc/global.h \
    cpu_inc/SGM.h \
    cpu_inc/Solver.h \
    cpu_inc/utils.h \
    gpu_inc/aggregation.cuh \
    gpu_inc/cost.cuh \
    gpu_inc/post_filter.cuh \
    gpu_inc/SGM.cuh

DISTFILES += \
    package.xml \
    CMakeLists.txt \
    readme.md \
    gpu_src/aggregation.cu \
    gpu_src/cost.cu \
    gpu_src/post_filter.cu \
    gpu_src/SGM.cu
