./b+tree.out core 2 file data/b+tree/mil.txt command data/b+tree/command.txt
./bfs 4 data/bfs/graph1MW_6.txt
./backprop 65536
./euler3d_cpu data/cfd/fvcorr.domn.193K
# ./euler3d_cpu_double data/cfd/fvcorr.domn.193K
# ./pre_euler3d_cpu data/cfd/fvcorr.domn.193K
# ./pre_euler3d_cpu_double data/cfd/fvcorr.domn.193K
./heartwall data/heartwall/test.avi 20 4
./hotspot 1024 1024 2 4 data/hotspot/temp_1024 data/hotspot/power_1024 output.out
./3D 512 8 100 data/hotspot3D/power_512x8 data/hotspot3D/temp_512x8 output.out
./kmeans -n 4 -i data/kmeans/kdd_cup 
./lavaMD -cores 4 -boxes1d 10
./leukocyte 5 4 data/leukocyte/testfile.avi 
./lud_omp -s 8000
./myocyte.out 100 1 0 4
./nn filelist_4 5 30 90
./needle 2048 10 2 
./particle_filter -x 128 -y 128 -z 10 -np 10000
./pathfinder 100000 100 > out
./srad_v1 100 0.5 502 458 4
./srad_v2 2048 2048 0 127 0 127 2 0.5 2
./sc_omp 10 20 256 65536 65536 1000 none output.txt 4