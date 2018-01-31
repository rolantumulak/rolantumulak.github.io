@CSRDashboard
Feature: CSR Dashboard Test Cases
	As an CSR user for RB or LNX
	I will be able to login to my account
	I will be able to view my Recent Activity
	I will be able to view my reviews
	I will be able to view my surveys
	I will be able to view my rewards
	I will be able to reply to buzzbox reviews
	I will be able to send feedback_requests
	I will be able to send review request
	
	Background:
		Given there are following users:
			| username | password   |
			| samplemanager@core1.com    | test123 |
        And I am on "/"
		And I click on login "Client Login"
		
		
	@CSRRBFeedbackRequests
    Scenario: As an CSR I can Send Feedback Request
		When I am authenticated as "samplemanager@core1.com"
		Then I should not see text matching "Enter Username or Email and valid password"
		When I see welcome message I will close it
		When I hover on "Manage"
		And I click on "Feedback Requests"
		Then I should be on "/clients/feedback_requests"
		Then I should see text matching "Search for customer"
		When I click on "+ Add"
		Then I should see text matching "Enter Customer Data"
		And I fill in "form_first_name" with "customer100"
		And I fill in "form_last_name" with "customer100"
		And I fill in "form_email" with "customer100@customer100.com"
		And I click on "Show Calendar"
		And I select date "January 18, 2018"
		And I fill in "team_users_names[]" with "sampleCSR"
		And I click on "Continue"
		Then I should be on "clients/feedback_requests?type=pending&success=request_added"
		Then I should see "Send Meet the team Email" button
		Then I save a screenshot

	@CSRRBReviewRequests
    Scenario: As an CSR I can Send Review Requests
		When I am authenticated as "samplemanager@core1.com"
		Then I should not see text matching "Enter Username or Email and valid password"
		When I see welcome message I will close it
		When I hover on "Manage"
		And I click on "Review Requests"
		Then I should be on "/clients/review_requests"
		Then I should see text matching "Request Reviews"
		And I fill in "emails" with "customer100,customer100"
		When I click on "Send"
		Then I should see text matching "Incorrectly formatted email"
		And I fill in "emails" with "customer100@customer100.com,customer101@customer101.com"
		When I click on "Send"
		Then I should see text matching "Feedback Requested"
		Then I save a screenshot			
