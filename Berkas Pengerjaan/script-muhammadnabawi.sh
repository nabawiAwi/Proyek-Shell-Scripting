#! /bin/sh

i=0

while [ $i -le 3 ]
do

echo "Menampilkan ukuran Memory"
free --mega
echo " "
sleep 1s

echo "Menampilkan Penggunaan Ruang Disk"
df -BG
echo " "
sleep 1s

echo "Menampilkan Penggunaan Ruang Disk Dalam %"
df --output=source,pcent --exclude-type=tmpfs
echo " "
sleep 1s

loop=$((i+=1))

done
