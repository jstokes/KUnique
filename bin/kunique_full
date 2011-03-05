
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

module KUnique
	
	class Input
		
		attr_reader :num_test_cases, :num_elements, :num_perm, :element_ary
		def initialize(output)
			#read in number of test cases
			@num_test_cases = gets.to_i
			@output = output
		end
		
		def read
		
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

module KUnique
	class UniqueNumber
		include Comparable
		attr_reader :element, :frequency
		
		def initialize(element, frequency)
			@element = element
			@frequency = frequency
		end

		def <=>(other)
			if (frequency == other.frequency)
				element <=> other.element 
			else
				other.frequency <=> frequency 
			end
		end

		def inspect
			"[" + element.inspect + "," + frequency.inspect + "]"
		end

	end
end
	
input = KUnique::Input.new(STDOUT)
answers = []
(1..input.num_test_cases).each do 
	input.read	
	calc = KUnique::PermCalc.new(input.num_perm, input.element_ary)
	calc.find_permutation
	answers << calc.output
end

answers.each do |answer|
	answer.each do |number|
		print "#{number} "  
	end
	puts
end


