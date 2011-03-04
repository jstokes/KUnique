module KUnique
	class UniqueNumber
		include Comparable
		attr_reader :element, :frequency
		
		def initialize(element, frequency)
			@element = element
			@frequency = frequency
		end

		def <=>(other)
			frequency <=> other.frequency unless frequency == other.frequency
			element <=> other.element
		end

		def inspect
			"[" + element.inspect + "," + frequency.inspect + "]"
		end

	end
end
