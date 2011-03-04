require 'spec_helper'

module KUnique
	describe PermCalc do
		describe "#failing scenarios" do
			context "when there are a greater number of one element x such that x > k"
			it "returns [-1]" do
				calc = PermCalc.new(1, [2, 2])
				calc.find_permutation
				calc.output.inspect.should == [-1].inspect
			end
		end

		describe "#passing scenarios" do
			context "when it is possible to make a permutation list"
			it "returns the correct array with n/k permutations of size k" do
				calc = PermCalc.new(2, [2, 10, 2, 8, 3, 6])
				calc.find_permutation
				calc.output.should == [2, 3, 2, 6, 8, 10].to_a
			end
		end

	end
end
