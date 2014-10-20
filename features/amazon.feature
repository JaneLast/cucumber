Feature: Search Amazon for a book
	As an avid book reader
	I want to search Amazon for a book
	So that I can find can read a good book
	
	
	Scenario: Search for a book
	Given I'm on the Amazon homepage
	When I can enter "The Cucumber Book" into the search box
	And I can press go
	Then I can see some search results
	And the first result should contain the phrase "The Cucumber Book"
	And the first result should be "£16.58"
	
