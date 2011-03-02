require 'spec_helper'

module KUnique
	describe Input do

		let(:input) { Input.new(##) }

		describe "#read input" do
			it "reads the number of test cases" do
				input.num_test_cases.should == 1
				input.num_elements.should == 1
				input.num_perm.should == 1
				input.element_ary.should == [4]
			end
		end
	end
end
