module KUnique
	class PermCalc
		
		attr_accessor :ans
		attr_reader :output, :n_array, :k
		def initialize(k, n_array)
			@k = k
			@n_array = n_array
			@output = Array.new
			@filled_arrays = 0
		end
	
		def find_permutation
			uniq = create_hash
			pqueue = create_pqueue(uniq)
			@output = create_answer(pqueue)
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
			uniq_hash.each do |elem, freq|
				pqueue << UniqueNumber.new(elem, freq)
			end
			pqueue.sort
		end

		def create_answer(pqueue)
			return [-1] if (pqueue.first.frequency > k)
			
			#a permutation is possible
			ary_size = (n_array.size.to_f / k).ceil

			(0..k).each { |i| output[i] = [] }
			
			#fill answer
			(0...pqueue.size).each do |uniq_num|
				fill_array(pqueue[uniq_num])
			end
			
			output.flatten!
		end

		def fill_array(uniq_num)
			(0...uniq_num.frequency).each do |index|
				if output[index + @filled_arrays].size >= k
					@filled_arrays += 1
				end
				output[index + @filled_arrays] << uniq_num.element
			end
		end
	end
end
