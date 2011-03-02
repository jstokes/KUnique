Feature:
	program receives input
	The program receives input via the command line, in the format of
	x
	n k
	[n_array]

	where x is the number of test cases
	n number of integers
	k number of contiguous elements

	Given a sequence of N elements, it is true that the sequence is K-unique if it can be split into 
	K contiguous elements without the same element being in any subsequence.

	i.e., N = 6; K = 2
	[2, 6, 2, 8, 3, 6] => 2 10 2 8 3 6   #(2, 10) (2, 8) (3, 6)

		Scenario Outline: reading input
				Given n is "<n>"
				And k is "<k>"
				And n_array is "<n_array>"
				When the program finds the permutation
				Then the output should be "<output>"

				Scenarios: impossible permutation
						| n | k | n_array | output |
						| 1 | 1 | [4, 2]  |   -1   |
