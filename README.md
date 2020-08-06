# miRsim
A tool to simulate sRNA-seq data.

Description
============

miRsim is a tool for simulating sRNA-seq reads from mature microRNA sequences (mirBase). it is a fork of the [wgsim](https://github.com/lh3/wgsim) tool. It is able to simulate microRNAs with SNPs and insertion/deletion (INDELs) polymorphisms, as well as to simulate reads with uniform substitution sequencing errors.


Compilation
===========

```make```

Test
=========

```make test```

Read abundances
===============

It is possible to simulate the relative abundance of microRNAs. For this, the following strategy can be used.
 
```
awk 'BEGIN{a[0]=10;a[1]=100;a[2]=500;a[3]=1000;a[4]=5000;}{if($0~/>/){ print $1" "a[int(5 * rand())];}else{print $0}}'  db/human_high_conf_mature.fa > db/human_high_conf_mature.exp.fa 
```


License
=======

miRsim is released under MIT license.


