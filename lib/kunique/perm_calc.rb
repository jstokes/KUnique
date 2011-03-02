module KUnique
	class PermCalc
		
		attr_reader :output
		def initialize(n, k, n_array)
			@n = n
			@k = k
			@n_array = n_array
			@output = []
		end
	
		def find_permutation
			@output << -1
		end
	end
end
