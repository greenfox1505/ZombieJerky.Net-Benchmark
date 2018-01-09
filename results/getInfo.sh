for i in *.bench
do
	echo $i:
	cat $i
	echo
	echo
done

for i in *.iperf3
do
	echo $i:
	tail -n 5 $i | head -n 3
	echo
done
