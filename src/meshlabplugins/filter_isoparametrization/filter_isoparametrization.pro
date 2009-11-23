include (../../sharedfilter.pri)

HEADERS       = ./diamond_sampler.h \
				./diam_parametrization.h \
				./diam_topology.h \
				./dual_coord_optimization.h \
				./iso_parametrization.h \
				./local_optimization.h \
				./local_parametrization.h \
				./mesh_operators.h \
				./opt_patch.h \
				./param_collapse.h \
				./param_flip.h \
				./param_mesh.h \
				./parametrizator.h \
				./statistics.h \
				./texcoord_optimization.h \
				./uv_grid.h \
				./defines.h \
				./filter_isoparametrization.h\
				./stat_remeshing.h\
				../../meshlab/meshmodel.h
				 

SOURCES       = ./filter_isoparametrization.cpp \
				../../meshlab/meshmodel.cpp \
				$$GLEWCODE
				
TARGET        = filter_isoparametrization
INCLUDEPATH  += ./  \
                ../../external/levmar-2.3/

win32-msvc2005:QMAKE_CXXFLAGS   +=  /openmp
win32-msvc2008:QMAKE_CXXFLAGS   +=  /openmp
win32-g++:QMAKE_CXXFLAGS   +=  -fopenmp
linux-g++:QMAKE_CXXFLAGS   +=  -fopenmp

win32-msvc.net:LIBS	+= ../../external/lib/win32-msvc.net/levmar.lib
win32-msvc2005:LIBS	+= ../../external/lib/win32-msvc2005/levmar.lib
win32-msvc2008:LIBS	+= ../../external/lib/win32-msvc2008/levmar.lib
win32-g++:LIBS		+= -L../../external/lib/win32-gcc -llevmar
linux-g++:LIBS		+= -L../../external/lib/linux-g++ -llevmar
macx:LIBS += ../../external/lib/macx/liblevmar.a

QMAKE_CXXFLAGS += -fpermissive

CONFIG       += opengl
