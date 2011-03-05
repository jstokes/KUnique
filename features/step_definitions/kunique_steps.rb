Given /^n_array is "([^"]*)"$/ do |n_array|
	@n_array = n_array
end

Given /^K = "([^"]*)"$/ do |k|
	@k = k
end

When /^the program is finished calculating$/ do
  @calc = KUnique::PermCalc.new(@k.to_i, @n_array.split(/,/))
end

Then /^the output should be "([^"]*)"$/ do |answer|
	@calc.find_permutation
	@calc.output.inspect.should == answer
end

