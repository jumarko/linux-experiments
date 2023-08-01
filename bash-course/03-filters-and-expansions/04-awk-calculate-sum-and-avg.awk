{ 
	for (i=1; i<=NF; i++) {
		# Notice that `i` means index while `$i` means the actual value at index `i`.
		sums[i] += $i
		# print sums[i] # DEBUG print
	}
}
END { 
	print "processed " NR " lines:"
	printf "- sum"; for (i=1; i<=length(sums); i++) { printf " " sums[i] }; 
	print ""
	printf "- ave"; for (i=1; i<=length(sums); i++) { printf " " sums[i] / NR }
	print
}
