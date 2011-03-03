module KUnique
	class PermCalc
		
		attr_reader :output, :n_array, :k
		def initialize(k, n_array)
			@k = k
			@n_array = n_array
			@output = Array.new
		end
	
		def find_permutation
			uniq = create_hash

			pqueue = create_pqueue(uniq)

			puts pqueue.inspect
		end

		def create_hash
			uniq = Hash.new(0)
			n_array.each do |elem|
				uniq[elem] += 1
			end
			uniq
		end

		def create_pqueue(uniq_hash)
			pqueue = Array.new
			uniq_hash.each_key do |elem|
				freq = uniq_hash[elem]
				pqueue << [elem, freq]
			end
			pqueue
		end

	end
end
