Given /^n_array is "([^"]*)"$/ do |n_array|
	@n_array = n_array
end

Given /^K = "([^"]*)"$/ do |k|
	@k = k
end

When /^the program is finished calculating$/ do
  @calc = KUnique::PermCalc.new(@k, @n_array)
	@calc.find_permutation
end

Then /^the output should be "([^"]*)"$/ do |answer|
	@calc.output.inspect.should == answer
end

