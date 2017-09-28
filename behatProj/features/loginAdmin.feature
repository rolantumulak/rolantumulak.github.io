#Login as Admin
Feature: Login as Admin
	Login as admin credential on reviewbuzz
	@javascript
	Scenario: Open homepage
		Given I am on the "https://stage.reviewbuzz.com"
		And I wait 20 seconds
		When I Press "home_go_button"
		Then print current URL
		#When I fill in "guapo JV" for "home_search_input"
		#Then I Should see "Start Your Review Here!"
		#When I Press "Get ReviewBuzz for Your Business"
		#Then I Should see "Username"	