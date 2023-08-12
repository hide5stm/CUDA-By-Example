NVCCFLAGS 	:= -g --use_fast_math
#LIBS		:= -shared -Xlinker -framework,GLUT -Xlinker -framework,OpenGL
LIBS		:=  -Xlinker -lglut -Xlinker -lOpenGL
SRCS 		= $(wildcard *.cu)
BINS 		= $(patsubst %.cu,%,$(SRCS))

all: $(BINS)
		
%: %.cu
	nvcc $(NVCCFLAGS) $(LIBS) $< -o ./bin/$@

clean:
	rm ./bin/*
