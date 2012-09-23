Apache Log Stats
================================

Parses apache logs and calculates requests per second for apache.

An example with a wildcard

```bash
andrew@andrew-OptiPlex-7010:/var/www/logs$ perl apache-log-stat $(ls b2f*_ApacheAccess.2011-12-05.gz);
b2f01_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.9244410066893	sqsum_requests: 4260577	variance_requests_per_second: 25.929417534131	total_requests: 413603	stddev_requests_per_second: 5.09209362974906	max_requests_per_second: 57	
b2f02_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 6.04974944240072	sqsum_requests: 4360521	variance_requests_per_second: 26.5543856366097	total_requests: 417711	stddev_requests_per_second: 5.15309476301472	max_requests_per_second: 45	
b2f03_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 6.09480940676857	sqsum_requests: 4386161	variance_requests_per_second: 26.643653012366	total_requests: 419073	stddev_requests_per_second: 5.16174902647988	max_requests_per_second: 48	
b2f04_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.06876246261216	sqsum_requests: 2472264	variance_requests_per_second: 12.8212313448721	total_requests: 325374	stddev_requests_per_second: 3.58067470525767	max_requests_per_second: 29	
b2f05_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 0	sqsum_requests: 0	variance_requests_per_second: 0	total_requests: 0	stddev_requests_per_second: 0	max_requests_per_second: 0	
b2f06_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.20454510556622	sqsum_requests: 2629560	variance_requests_per_second: 13.2898311654319	total_requests: 338946	stddev_requests_per_second: 3.64552207035315	max_requests_per_second: 30	
b2f07_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.09214848629725	sqsum_requests: 2519322	variance_requests_per_second: 12.9238662697117	total_requests: 330180	stddev_requests_per_second: 3.59497792339698	max_requests_per_second: 28	
b2f08_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.0845929260059	sqsum_requests: 2540295	variance_requests_per_second: 12.7755300865641	total_requests: 334373	stddev_requests_per_second: 3.57428735366424	max_requests_per_second: 33	
b2f09_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.04870300114124	sqsum_requests: 2473946	variance_requests_per_second: 12.6640479306992	total_requests: 327368	stddev_requests_per_second: 3.5586581643506	max_requests_per_second: 28	
b2f10_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 0	sqsum_requests: 0	variance_requests_per_second: 0	total_requests: 0	stddev_requests_per_second: 0	max_requests_per_second: 0	
b2f11_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.50766369047619	sqsum_requests: 3046673	variance_requests_per_second: 15.0030365059435	total_requests: 370115	stddev_requests_per_second: 3.87337533760201	max_requests_per_second: 35	
b2f12_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.42807699313862	sqsum_requests: 2890216	variance_requests_per_second: 14.4095608232663	total_requests: 357580	stddev_requests_per_second: 3.79599273224624	max_requests_per_second: 37	
b2f13_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.47455347133996	sqsum_requests: 3014847	variance_requests_per_second: 15.0908740346007	total_requests: 366275	stddev_requests_per_second: 3.88469741866733	max_requests_per_second: 36	
b2f14_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.39246363056664	sqsum_requests: 2939374	variance_requests_per_second: 14.5108841370998	total_requests: 363630	stddev_requests_per_second: 3.80931544205778	max_requests_per_second: 34	
b2f15_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.39545332417828	sqsum_requests: 2915221	variance_requests_per_second: 14.4037414556907	total_requests: 361463	stddev_requests_per_second: 3.79522614025709	max_requests_per_second: 41	
b2f16_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.87390354072563	sqsum_requests: 3536626	variance_requests_per_second: 17.0290362995984	total_requests: 403126	stddev_requests_per_second: 4.12662529188178	max_requests_per_second: 48	
b2f17_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.89512546786479	sqsum_requests: 3540373	variance_requests_per_second: 16.8090791036525	total_requests: 404777	stddev_requests_per_second: 4.09988769402926	max_requests_per_second: 37	
b2f18_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.88744620006355	sqsum_requests: 3569607	variance_requests_per_second: 16.8935825448034	total_requests: 407635	stddev_requests_per_second: 4.11018035429145	max_requests_per_second: 30	
b2f19_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.82075662553105	sqsum_requests: 3461010	variance_requests_per_second: 16.1319422152985	total_requests: 402808	stddev_requests_per_second: 4.01645891492724	max_requests_per_second: 36	
b2f20_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 5.84070681384731	sqsum_requests: 3498681	variance_requests_per_second: 16.436351971084	total_requests: 404247	stddev_requests_per_second: 4.05417710159337	max_requests_per_second: 35	
b2f21_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.90580181645655	sqsum_requests: 6765577	variance_requests_per_second: 29.2100639395765	total_requests: 583211	stddev_requests_per_second: 5.40463356200737	max_requests_per_second: 41	
b2f22_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.86029411764706	sqsum_requests: 6592100	variance_requests_per_second: 28.3111732789005	total_requests: 575122	stddev_requests_per_second: 5.32082449239781	max_requests_per_second: 38	
b2f23_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.67704876180751	sqsum_requests: 6423079	variance_requests_per_second: 27.367948980692	total_requests: 571349	stddev_requests_per_second: 5.23143851924994	max_requests_per_second: 39	
b2f24_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.7593984962406	sqsum_requests: 6484910	variance_requests_per_second: 27.8038681976786	total_requests: 571728	stddev_requests_per_second: 5.27293734057959	max_requests_per_second: 37	
b2f25_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.89541227274573	sqsum_requests: 6717070	variance_requests_per_second: 28.5921938950229	total_requests: 583242	stddev_requests_per_second: 5.34716690360633	max_requests_per_second: 51	
b2f26_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.86645111120206	sqsum_requests: 6589701	variance_requests_per_second: 28.0205963236546	total_requests: 576603	stddev_requests_per_second: 5.29344843402244	max_requests_per_second: 36	
b2f27_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.91272589546586	sqsum_requests: 6806184	variance_requests_per_second: 29.453805154712	total_requests: 584972	stddev_requests_per_second: 5.42713599928286	max_requests_per_second: 42	
b2f28_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.65541471667735	sqsum_requests: 6285421	variance_requests_per_second: 27.1544186690001	total_requests: 561073	stddev_requests_per_second: 5.21099018124196	max_requests_per_second: 38	
b2f29_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.8343949044586	sqsum_requests: 6606078	variance_requests_per_second: 28.1476393241968	total_requests: 578100	stddev_requests_per_second: 5.30543488549212	max_requests_per_second: 47	
b2f30_ApacheAccess.2011-12-05.gz - avg_requests_per_second: 7.74477986403367	sqsum_requests: 6494277	variance_requests_per_second: 27.6178911703812	total_requests: 574167	stddev_requests_per_second: 5.25527270180922	max_requests_per_second: 39	
Total:	avg_requests_per_second: 178.195623551948	sqsum_requests: 123819671	total_requests: 12507851	variance_requests_per_second: 581.999651005239	stddev_requests_per_second: 125.996277083509	max_requests_per_second: 1075	
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
