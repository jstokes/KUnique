Feature:
		Read input in the form of:
			x
			n k
			[n_array]
			n2 k2
			[n_array2}
			...

			where:
				x       => The number of test cases
				n       => The size of the array (number of elements)
				k       => Number of contiguous elements without the same element being
						       in any subsequence. 
				n_array => Elements stored into an array of integers 
						 
		Scenario Outline: reading input
				Given the program has not yet started
				When  the program receives input
				Then  "<num test cases>" should be stored into @num_test_cases
				And   "<num elements>" should be stored into @num_elements
				And   "<num perm>" should be stored into @num_perm
				And   "<element ary>" should be stored into @element_ary

	Scenarios: 1 test cases, 1 element, k = 1, element read = 4
		| num test cases |  num elements | num_perm | element array |
		|      1         |       1       |    1     |     [4]       |
