CC := gcc


INCLUDE_DIR := 


CFLAGS := $(INCLUDE_DIR)

export RTE_SDK  := $(MAKEROOT)/dpdk-2.1.0

#%.o : %.c
#	${CC} ${CFLAGS} -c $< -o $(MAKEROOT)/obj/$@

