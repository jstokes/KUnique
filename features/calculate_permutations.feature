Feature:
	calculate permutations
	[n_array]

	Given a sequence of N elements, it is true that the sequence is K-unique if 
	it can be split into K contiguous elements without the same element being 
	in any subsequence.

	i.e., N = 6; K = 2
	[2, 6, 2, 8, 3, 6] => 2 10 2 8 3 6   #(2, 10) (2, 8) (3, 6)

		Scenario Outline: calculating permutations
				Given n_array is "<n_array>"
				And K = "<k>"
				When the program is finished calculating
				Then the output should be "<output>"

				Scenarios: impossible permutation
						|       n_array      | k | output  			 |
						| [2, 2]             | 1 | [-1]    			 |
						| [2, 3, 2]          | 1 | [-1]     		 |
						| [2, 2, 2, 3]       | 2 | [-1]          |
						| [2, 10, 2, 8, 3, 6]| 2 |[2,3,2,6,8,10] |
