Apache Log Stats
================================

Parses apache logs and calculates requests per second for apache.

An example with a wildcard

```bash
andrew@andrew-OptiPlex-7010:/var/www/logs/bin$ ./apache-log-stat $(ls ../logs/b2f*_ApacheAccess.2011-12-05.gz)
Processing
====================

../logs/b2f01_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.92	variance_requests_per_second: 25.93	total_requests:  413603	stddev_requests_per_second: 5.09	max_requests_per_second:   57	
../logs/b2f02_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 6.05	variance_requests_per_second: 26.55	total_requests:  417711	stddev_requests_per_second: 5.15	max_requests_per_second:   45	
../logs/b2f03_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 6.09	variance_requests_per_second: 26.64	total_requests:  419073	stddev_requests_per_second: 5.16	max_requests_per_second:   48	
../logs/b2f04_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.07	variance_requests_per_second: 12.82	total_requests:  325374	stddev_requests_per_second: 3.58	max_requests_per_second:   29	
../logs/b2f05_ApacheAccess.2011-12-05.gz - avg_requests_per_second:    0	variance_requests_per_second:    0	total_requests:    0	stddev_requests_per_second:    0	max_requests_per_second:    0	
../logs/b2f06_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.20	variance_requests_per_second: 13.29	total_requests:  338946	stddev_requests_per_second: 3.65	max_requests_per_second:   30	
../logs/b2f07_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.09	variance_requests_per_second: 12.92	total_requests:  330180	stddev_requests_per_second: 3.59	max_requests_per_second:   28	
../logs/b2f08_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.08	variance_requests_per_second: 12.78	total_requests:  334373	stddev_requests_per_second: 3.57	max_requests_per_second:   33	
../logs/b2f09_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.05	variance_requests_per_second: 12.66	total_requests:  327368	stddev_requests_per_second: 3.56	max_requests_per_second:   28	
../logs/b2f10_ApacheAccess.2011-12-05.gz - avg_requests_per_second:    0	variance_requests_per_second:    0	total_requests:    0	stddev_requests_per_second:    0	max_requests_per_second:    0	
../logs/b2f11_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.51	variance_requests_per_second: 15.00	total_requests:  370115	stddev_requests_per_second: 3.87	max_requests_per_second:   35	
../logs/b2f12_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.43	variance_requests_per_second: 14.41	total_requests:  357580	stddev_requests_per_second: 3.80	max_requests_per_second:   37	
../logs/b2f13_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.47	variance_requests_per_second: 15.09	total_requests:  366275	stddev_requests_per_second: 3.88	max_requests_per_second:   36	
../logs/b2f14_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.39	variance_requests_per_second: 14.51	total_requests:  363630	stddev_requests_per_second: 3.81	max_requests_per_second:   34	
../logs/b2f15_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.40	variance_requests_per_second: 14.40	total_requests:  361463	stddev_requests_per_second: 3.80	max_requests_per_second:   41	
../logs/b2f16_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.87	variance_requests_per_second: 17.03	total_requests:  403126	stddev_requests_per_second: 4.13	max_requests_per_second:   48	
../logs/b2f17_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.90	variance_requests_per_second: 16.81	total_requests:  404777	stddev_requests_per_second: 4.10	max_requests_per_second:   37	
../logs/b2f18_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.89	variance_requests_per_second: 16.89	total_requests:  407635	stddev_requests_per_second: 4.11	max_requests_per_second:   30	
../logs/b2f19_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.82	variance_requests_per_second: 16.13	total_requests:  402808	stddev_requests_per_second: 4.02	max_requests_per_second:   36	
../logs/b2f20_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.84	variance_requests_per_second: 16.44	total_requests:  404247	stddev_requests_per_second: 4.05	max_requests_per_second:   35	
../logs/b2f21_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.91	variance_requests_per_second: 29.21	total_requests:  583211	stddev_requests_per_second: 5.40	max_requests_per_second:   41	
../logs/b2f22_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.86	variance_requests_per_second: 28.31	total_requests:  575122	stddev_requests_per_second: 5.32	max_requests_per_second:   38	
../logs/b2f23_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.68	variance_requests_per_second: 27.37	total_requests:  571349	stddev_requests_per_second: 5.23	max_requests_per_second:   39	
../logs/b2f24_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.76	variance_requests_per_second: 27.80	total_requests:  571728	stddev_requests_per_second: 5.27	max_requests_per_second:   37	
../logs/b2f25_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.90	variance_requests_per_second: 28.59	total_requests:  583242	stddev_requests_per_second: 5.35	max_requests_per_second:   51	
../logs/b2f26_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.87	variance_requests_per_second: 28.02	total_requests:  576603	stddev_requests_per_second: 5.29	max_requests_per_second:   36	
../logs/b2f27_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.91	variance_requests_per_second: 29.45	total_requests:  584972	stddev_requests_per_second: 5.43	max_requests_per_second:   42	
../logs/b2f28_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.66	variance_requests_per_second: 27.15	total_requests:  561073	stddev_requests_per_second: 5.21	max_requests_per_second:   38	
../logs/b2f29_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.83	variance_requests_per_second: 28.15	total_requests:  578100	stddev_requests_per_second: 5.31	max_requests_per_second:   47	
../logs/b2f30_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.74	variance_requests_per_second: 27.62	total_requests:  574167	stddev_requests_per_second: 5.26	max_requests_per_second:   39	
Total:	avg_requests_per_second: 178.19	total_requests: 12507851	variance_requests_per_second: 581.99	stddev_requests_per_second: 125.99	max_requests_per_second: 1075	


Requests per hour
====================

   00 #                                                                                                     	  199683 / 12507851 (  1.60% )	var: 12308168	rqs:  55	rqm: 3328
   01                                                                                                       	  121028 / 12507851 (  0.97% )	var: 12386823	rqs:  33	rqm: 2017
   02                                                                                                       	   92839 / 12507851 (  0.74% )	var: 12415012	rqs:  25	rqm: 1547
   03                                                                                                       	   79303 / 12507851 (  0.63% )	var: 12428548	rqs:  22	rqm: 1321
   04                                                                                                       	   76682 / 12507851 (  0.61% )	var: 12431169	rqs:  21	rqm: 1278
   05                                                                                                       	   96342 / 12507851 (  0.77% )	var: 12411509	rqs:  26	rqm: 1605
   06 #                                                                                                     	  141415 / 12507851 (  1.13% )	var: 12366436	rqs:  39	rqm: 2356
   07 #                                                                                                     	  245247 / 12507851 (  1.96% )	var: 12262604	rqs:  68	rqm: 4087
   08 ###                                                                                                   	  431089 / 12507851 (  3.45% )	var: 12076762	rqs: 119	rqm: 7184
   09 ####                                                                                                  	  589031 / 12507851 (  4.71% )	var: 11918820	rqs: 163	rqm: 9817
   10 #####                                                                                                 	  662950 / 12507851 (  5.30% )	var: 11844901	rqs: 184	rqm: 11049
   11 #####                                                                                                 	  637200 / 12507851 (  5.09% )	var: 11870651	rqs: 177	rqm: 10620
   12 #####                                                                                                 	  739012 / 12507851 (  5.91% )	var: 11768839	rqs: 205	rqm: 12316
   13 ######                                                                                                	  780787 / 12507851 (  6.24% )	var: 11727064	rqs: 216	rqm: 13013
   14 ######                                                                                                	  779051 / 12507851 (  6.23% )	var: 11728800	rqs: 216	rqm: 12984
   15 #####                                                                                                 	  667872 / 12507851 (  5.34% )	var: 11839979	rqs: 185	rqm: 11131
   16 ######                                                                                                	  750655 / 12507851 (  6.00% )	var: 11757196	rqs: 208	rqm: 12510
   17 ######                                                                                                	  804304 / 12507851 (  6.43% )	var: 11703547	rqs: 223	rqm: 13405
   18 #####                                                                                                 	  740101 / 12507851 (  5.92% )	var: 11767750	rqs: 205	rqm: 12335
   19 ######                                                                                                	  795684 / 12507851 (  6.36% )	var: 11712167	rqs: 221	rqm: 13261
   20 #######                                                                                               	  973406 / 12507851 (  7.78% )	var: 11534445	rqs: 270	rqm: 16223
   21 #######                                                                                               	  979602 / 12507851 (  7.83% )	var: 11528249	rqs: 272	rqm: 16326
   22 #####                                                                                                 	  724108 / 12507851 (  5.79% )	var: 11783743	rqs: 201	rqm: 12068
   23 ###                                                                                                   	  400460 / 12507851 (  3.20% )	var: 12107391	rqs: 111	rqm: 6674


Comparison by distribution over an hour
====================

   00 ####################                                                                                  	199683 / 979602 ( 20.38% )	var: 779919	rqs:  55	rqm: 3328
   01 ############                                                                                          	121028 / 979602 ( 12.35% )	var: 858574	rqs:  33	rqm: 2017
   02 #########                                                                                             	 92839 / 979602 (  9.48% )	var: 886763	rqs:  25	rqm: 1547
   03 ########                                                                                              	 79303 / 979602 (  8.10% )	var: 900299	rqs:  22	rqm: 1321
   04 #######                                                                                               	 76682 / 979602 (  7.83% )	var: 902920	rqs:  21	rqm: 1278
   05 #########                                                                                             	 96342 / 979602 (  9.83% )	var: 883260	rqs:  26	rqm: 1605
   06 ##############                                                                                        	141415 / 979602 ( 14.44% )	var: 838187	rqs:  39	rqm: 2356
   07 #########################                                                                             	245247 / 979602 ( 25.04% )	var: 734355	rqs:  68	rqm: 4087
   08 ############################################                                                          	431089 / 979602 ( 44.01% )	var: 548513	rqs: 119	rqm: 7184
   09 ############################################################                                          	589031 / 979602 ( 60.13% )	var: 390571	rqs: 163	rqm: 9817
   10 ###################################################################                                   	662950 / 979602 ( 67.68% )	var: 316652	rqs: 184	rqm: 11049
   11 #################################################################                                     	637200 / 979602 ( 65.05% )	var: 342402	rqs: 177	rqm: 10620
   12 ###########################################################################                           	739012 / 979602 ( 75.44% )	var: 240590	rqs: 205	rqm: 12316
   13 ###############################################################################                       	780787 / 979602 ( 79.70% )	var: 198815	rqs: 216	rqm: 13013
   14 ###############################################################################                       	779051 / 979602 ( 79.53% )	var: 200551	rqs: 216	rqm: 12984
   15 ####################################################################                                  	667872 / 979602 ( 68.18% )	var: 311730	rqs: 185	rqm: 11131
   16 ############################################################################                          	750655 / 979602 ( 76.63% )	var: 228947	rqs: 208	rqm: 12510
   17 ##################################################################################                    	804304 / 979602 ( 82.11% )	var: 175298	rqs: 223	rqm: 13405
   18 ###########################################################################                           	740101 / 979602 ( 75.55% )	var: 239501	rqs: 205	rqm: 12335
   19 #################################################################################                     	795684 / 979602 ( 81.23% )	var: 183918	rqs: 221	rqm: 13261
   20 ###################################################################################################   	973406 / 979602 ( 99.37% )	var:   6196	rqs: 270	rqm: 16223
   21 ####################################################################################################   	979602 / 979602 (100.00% )	var:      0	rqs: 272	rqm: 16326
   22 #########################################################################                             	724108 / 979602 ( 73.92% )	var: 255494	rqs: 201	rqm: 12068
   23 ########################################                                                              	400460 / 979602 ( 40.88% )	var: 579142	rqs: 111	rqm: 6674

```

An example file individual files list

```bash
andrew@andrew-OptiPlex-7010:/var/www/logs$ perl apache-log-stat b2f01_ApacheAccess.2011-12-05.gz b2f02_ApacheAccess.2011-12-05.gz;
b2f01_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.9244410066893	sqsum_requests: 4260577	variance_requests_per_second: 25.929417534131	total_requests: 413603	stddev_requests_per_second: 5.09209362974906	max_requests_per_second: 57	
b2f02_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 6.04974944240072	sqsum_requests: 4360521	variance_requests_per_second: 26.5543856366097	total_requests: 417711	stddev_requests_per_second: 5.15309476301472	max_requests_per_second: 45	
Total:	avg_requests_per_second: 11.97419044909	sqsum_requests: 8621098	total_requests: 831314	variance_requests_per_second: 52.4838031707407	stddev_requests_per_second: 10.2451883927638	max_requests_per_second: 102
```

Examples piping from either cat or zcat

```bash
andrew@andrew-OptiPlex-7010:/var/www/logs$ cat b2f01_ApacheAccess.2011-12-05.gz | perl apache-log-stat;

andrew@andrew-OptiPlex-7010:/var/www/logs$ zcat b2f01_ApacheAccess.2011-12-05.gz | perl apache-log-stat;
```
