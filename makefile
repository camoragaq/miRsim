.DELETE_ON_ERROR:

mirsim: mirsim.c
	gcc -g -O2 -Wall -o mirsim mirsim.c -lz -lm
human_high_conf_mature.sim.fq: mirsim
	./mirsim db/human_high_conf_mature.exp.fa human_high_conf_mature.sim.fa > human_high_conf_mature.sim.log

test : mirsim human_high_conf_mature.sim.fq
all : mirsim human_high_conf_mature.sim.fq
clean:
	rm -f mirsim human_high_conf_mature.sim.fa  human_high_conf_mature.sim.log
