for i in {1..5}
do
	sync
	dd if=/dev/zero of=/tmp/bench$i bs=1M count=1024
	sync
	rm /tmp/bench$i
done
