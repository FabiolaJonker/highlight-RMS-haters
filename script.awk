{
	if (NR > 1)
		printf ", "

	printf "a[href*=\"" $0 "\"]"
}

END { print "\n{ content-before: 'a0'; content-after: 'a0'; background-color: crimson; color: black !important; }" }
