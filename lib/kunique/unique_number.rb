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
