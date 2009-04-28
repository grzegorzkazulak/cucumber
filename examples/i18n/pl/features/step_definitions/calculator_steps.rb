# encoding: utf-8
require 'spec/expectations'
$:.unshift(File.dirname(__FILE__) + '/../../lib') # This line is not needed in your own project
require 'cucumber/formatter/unicode'
require 'calculator'

Before do
  @calc = Calculator.new
end

After do
end
Gdy /wpisze (\d+) do kalkulatora/ do |n|
  @calc.push n.to_i
end

Kiedy /wcisne (\w+)/ do |op|
  @result = @calc.send op
end

Wtedy /rezultat (.*) powinien pojawic sie na ekranie/ do |result|
  @result.should == result.to_f
end
