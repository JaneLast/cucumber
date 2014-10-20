Feature: Bank Withdrawl

	Scenario Outline: Bank Withdrawls
		Given I have <balance> in my account
		And I withdraw <withdrawl>
		Then I should have <remaining> left in my account
		
		Examples:
			| balance	| withdrawl	| remaining	|
			| 100		| 50		| 50		|
			| 250		| 34		| 216		|
			| 20		| 20		| 0			|