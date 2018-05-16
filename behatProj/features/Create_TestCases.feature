#Pre-conditions
	# admin credentials already exists in stage
	# if username/password is modified in background
		#you also need to modify all username in all scenario
	# if company name is modified in @createClient
		#you also need to modify all client in all scenario
### variables to modify ####
	# username/password in background
	# company name
	# company contact email

@createTestcases
Feature: Create Test Cases
	As an admin user
	I will be able to create new Client
	I will be able to search the newly created Client
	I will be able to create new client manager user
	I will be able to create new Master user
	I will be able to create new CSR user
	I will be able to create new Technician user
	
	Background:
		Given there are following users:
			| username | password   |
			| adminUser    | test123 |
			| clientManager001    | test123 |
			| stagingMaster    | test123 |
			| stagingMasterLNX    | test123 |
			| stagingCSR001    | test123 |
			| stagingTech001    | test123 |
        And I am on "/"
		And I click on login "Client Login"
	
	@createClientBuzzboxReviewOnly
    Scenario: Create New Client BuzzBox Only
		When I am authenticated as "adminUser"
		And I press on "Add Client" button
		And I fill in "company" with "Auto001NewClient"
		And I check "options[send_as_feature]"
		And I fill in "contact_email" with "Auto001NewClient@stage.com"
		#And I check "buzzbox-title-on-client-dashboard"
		#And I check "buzzbox-title-on-portal"
		#And I check "buzzbox-title-on-public-pages"
		And I check "buzzbox-review-only"
		When I press "submit_client_form"
		Then I should not see "Error: company with such name already exists in the database"
		Then I save a screenshot

	@searchClient
	Scenario: Search for the newly created Client
		When I am authenticated as "adminUser"
		And I fill in "keywords" with "Auto001NewClient"
		And I press "Search"
		Then I should see the newly created client "Auto001NewClient"
		Then I save a screenshot
		
	@createClientManager
	Scenario: Create Client Manager User
		When I am authenticated as "adminUser"
		And I hover on "Client Management"
		And I click on "Manage User Accounts"
		And I click on "Add User"
		And I fill in "username" with "clientManager001"
		And I fill in "email" with "clientManager001@stage.com"
		And I fill in "password" with "test123"
		And I fill in "password_confirm" with "test123"
		And I select "Auto001NewClient" from "clients_id"
		And I select "client" from "memberships"
		When I press "Save"
		Then I should not see text matching "The username you entered"
		Then I save a screenshot	
		
	@loginAsClientManager
	Scenario: Login as new Client Manager User
		When I am authenticated as "clientManager001"
		And I accept the term of use
		When I click on "Dashboard Manager Pro"
		Then I should be on "/clients"
		Then I save a screenshot
		
	@createMasterUser
	Scenario: Create Master User for RB
		When I am authenticated as "adminUser"
		And I hover on "Client Management"
		And I click on "Manage Master Users"
		And I click on "Add User"
		And I fill in "username" with "stagingMaster"
		And I fill in "email" with "stagingMaster@stage.com"
		And I fill in "password" with "test123"
		And I fill in "password_confirm" with "test123"
		When I press "Save"
		Then I should not see text matching "The username is"
		Then I save a screenshot	
		
	@loginAsMasterUser
	Scenario: Login as new Master User for RB
		When I am authenticated as "stagingMaster"
		And I accept the term of use	
		Then I should be on "/master_account"
		Then I should see text matching "Hi,stagingMaster"
		Then I save a screenshot

	@createMasterUserLNX
	Scenario: Create Master User for LNX
		When I am authenticated as "adminUser"
		And I hover on "Client Management"
		And I click on "Manage Master Users"
		And I click on "Add User"
		And I fill in "username" with "stagingMasterLNX"
		And I fill in "email" with "stagingMasterLNX@stage.com"
		And I fill in "password" with "test123"
		And I fill in "password_confirm" with "test123"
		And I check "third_party_system_id"
		When I press "Save"
		Then I should not see text matching "The username is"
		Then I save a screenshot	
		
	@loginAsMasterUserNX
	Scenario: Login as new Master User for LNX
		When I am authenticated as "stagingMasterLNX"
		And I accept the term of use	
		Then I should be on "/master_account/dealers"
		Then I should see text matching "Hi, stagingMasterLNX"
		Then I save a screenshot		

	@createCSRUser
	Scenario: Create CSR User
		When I am authenticated as "adminUser"
		And I hover on "Client Management"
		And I click on "Manage User Accounts"
		And I click on "Add User"
		And I fill in "username" with "stagingCSR001"
		And I fill in "email" with "stagingCSR001@stage.com"
		And I fill in "password" with "test123"
		And I fill in "password_confirm" with "test123"
		And I select "Auto001NewClient" from "clients_id"
		And I select "csr" from "memberships"
		When I press "Save"
		Then I should not see text matching "The username you entered"
		Then I save a screenshot	
		
	@loginAsCSRUser
	Scenario: Login as new CSR User
		When I am authenticated as "stagingCSR001"
		And I accept the term of use	
		Then I should be on "/clients/feedback_requests/"
		Then I should see text matching "Customer List"
		Then I save a screenshot

	@createTechUser
	Scenario: Create Technician User
		When I am authenticated as "adminUser"
		And I hover on "Client Management"
		And I click on "Manage User Accounts"
		And I click on "Add User"
		And I fill in "username" with "stagingTech001"
		And I fill in "email" with "stagingTech001@stage.com"
		And I fill in "password" with "test123"
		And I fill in "password_confirm" with "test123"
		And I select "Auto001NewClient" from "clients_id"
		And I select "technician" from "memberships"
		When I press "Save"
		Then I should not see text matching "The username you entered"
		Then I save a screenshot	
		
	@SearchTechUser
	Scenario: Search if Technician User is created
		When I am authenticated as "adminUser"
		And I hover on "Client Management"
		And I click on "Manage User Accounts"
		And I fill in "keywords" with "stagingTech001"
		When I press "Search"
		Then I should see the newly created user "stagingTech001"
		Then I save a screenshot