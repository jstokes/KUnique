module KUnique
	
	class Input
		
		attr_reader :num_test_cases, :num_elements, :num_perm, :element_ary
		def initialize(output)
			@output = output
		end
		
		def read
			#read in number of test cases
			@num_test_cases = gets.to_i
			
			#read in number of elements and permutations (n, k)
			@num_elements, @num_perm = gets.split
			@num_elements = @num_elements.to_i
			@num_perm = @num_perm.to_i
			
			#read in array of integers
			@element_ary = gets.split.to_a
			@element_ary.collect! { |elem| elem.to_i }
		end
	
	end

end

