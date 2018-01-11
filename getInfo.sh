cd results;
hosts=$(for i in *; do echo $i | grep ^[^\.]* -o | grep -v getInfo; done | sort -u)

for i in $hosts
do
	echo
	echo $i
	echo =================
	echo
	echo JSbench1
	echo --------
	echo
	cat $i.JSbench1
	echo
	echo
	echo
	echo iPerf3
	echo ------
	echo
	tail -n 5 $i.iperf3 | head -n 3
	echo
	echo
	echo DiskBench
	echo ------
	echo
	tail -n 3 $i.DiskBench
	echo
	echo

done | tee ../report/$(date '+%Y-%m-%d.md')
