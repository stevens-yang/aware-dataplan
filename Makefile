export MAKEROOT := $(shell pwd)
TARGET_DIRS := dpdk-2.1.0 \
               switch

include ./env.mk

define build_obj
for SubDir in $(TARGET_DIRS); do \ 
    if ! [ -d $$SubDir ]; then \
        echo "The $$SubDir is not exist !"; \
        exit -1; \
    fi; \
    echo "Building $$SubDir ..."; \
    make -C $$SubDir ; \
    if [ $$? -ne 0 ]; then \
        echo "Building $$SubDir is failed !"; \
        exit -2; \
    fi; \
done
endef

all : 
	@$(call build_obj)
	cp switch/build/aware ./
clean :
	find ${MAKEROOT} -name *.o -exec rm -rf {}

