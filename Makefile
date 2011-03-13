NVCCFLAGS := -g --use_fast_math
LIBS	:= -Xlinker -framework,GLUT -Xlinker -framework,OpenGL

all:		3-parameter 3-query 3-simplekernel 4-vecsum 4-mandel

3-parameter:	3-parameter.cu
		nvcc 3-parameter.cu -o 3-parameter.o $(NVCCFLAGS)

3-query:	3-query.cu
		nvcc 3-query.cu -o 3-query.o $(NVCCFLAGS)

3-simplekernel: 3-simplekernel.cu
		nvcc 3-simplekernel.cu -o 3-simplekernel.o $(NVCCFLAGS)

4-vecsum:	4-vecsum.cu
		nvcc 4-vecsum.cu -o 4-vecsum.o $(NVCCFLAGS)

4-mandel:	4-mandel.cu
		nvcc 4-mandel.cu -o 4-mandel.o $(NVCCFLAGS) $(LIBS)

clean:
		rm 3-parameter.o 3-query.o 3-simplekernel.o 4-vecsum.o 4-mandel.o
