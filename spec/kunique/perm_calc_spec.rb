require 'spec_helper'

module KUnique
	describe PermCalc do
		describe "#failing scenarios" do
			context "when there are a greater number of one element x such that
			         x > k"
				it "returns [-1]" do
					calc = PermCalc.new(1, 1, [2, 2])
					calc.find_permutation
					calc.output.should == [-1]
				end
		end
	end
end
