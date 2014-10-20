# Data table

Given /^these users:$/ do |table|
  @table = table
  binding.pry
  @table.class
  @table.raw
end