# memory-bandwidth-benchmark

All you need to run is:
```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/mgoin/memory-bandwidth-benchmark/main/benchmark.sh)"
```
or
```
bash -c "$(wget https://raw.githubusercontent.com/mgoin/memory-bandwidth-benchmark/main/benchmark.sh -O -)"
```

Example:
```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/mgoin/memory-bandwidth-benchmark/main/benchmark.sh)"
Cloning into 'STREAM'...
remote: Enumerating objects: 83, done.
remote: Counting objects: 100% (33/33), done.
remote: Compressing objects: 100% (10/10), done.
remote: Total 83 (delta 28), reused 23 (delta 23), pack-reused 50
Receiving objects: 100% (83/83), 27.55 KiB | 1.97 MiB/s, done.
Resolving deltas: 100% (47/47), done.
gcc -O2 -fopenmp stream.c -o stream_c.exe
Num Cores, Copy, Scale, Add, Triad
1,21136.0,12520.5,14434.3,14522.6
2,42016.6,25332.7,29350.5,29669.7
3,61281.0,37191.8,43445.5,44021.2
4,80844.3,47127.0,55645.8,55840.3
5,97683.9,57907.4,68726.2,68947.5
6,108695.9,66169.3,76579.2,76046.9
7,118692.7,72920.6,84591.0,85868.2
8,131277.1,80158.7,93788.6,94786.5
```
