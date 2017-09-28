#Login as Admin
Feature: Login as Admin
	Login as admin credential on reviewbuzz
	@javascript
	Scenario: Login as Admin
		Given I am on the "https://stage.reviewbuzz.com"
		And I wait 10 seconds
		When I Press "Client Login"
		Then I Should see "Username"