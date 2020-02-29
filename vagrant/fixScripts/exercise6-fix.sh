#!/bin/bash
#add fix to exercise6-fix here
if [ $# -lt 2 ]; then
    echo "At least 2 args are required"
    exit 1
else
	user=$USER
    hs=$HOSTNAME
	copy_location=${@: -1}
	total_copy_size=0
    if [ $hs == server1 ]; then
		remote_host=server2
	else
        remote_host=server1
    fi
	echo $copy_location
	array=( "$@" )
	unset "array[${#array[@]}-1]"    # Removes last element
	for i in "${array[@]}"; do
		scp $i $user@$remote_host:$copy_location
		files_size=$(wc -c "$i" | awk '{print $1}')
		let "total_copy_size += $files_size"
	done
	echo $total_copy_size
fi

