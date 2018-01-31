Feature: Add Reviews
	I will be able to search for a client
	I will be able to select employee
	I will be able to input name and email address
	I will be able to add review
	I will be able to refer

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "195Review"
		And I fill in "email_field" with "195Review@195Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "195Review_title"
		When I fill in "message" with "195Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "196Review"
		And I fill in "email_field" with "196Review@196Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "196Review_title"
		When I fill in "message" with "196Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"	

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "197Review"
		And I fill in "email_field" with "197Review@197Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "197Review_title"
		When I fill in "message" with "197Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "198Review"
		And I fill in "email_field" with "198Review@198Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "198Review_title"
		When I fill in "message" with "198Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "199Review"
		And I fill in "email_field" with "199Review@199Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "199Review_title"
		When I fill in "message" with "199Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "200Review"
		And I fill in "email_field" with "200Review@200Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "200Review_title"
		When I fill in "message" with "200Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"			

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "201Review"
		And I fill in "email_field" with "201Review@201Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "201Review_title"
		When I fill in "message" with "201Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"	

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "202Review"
		And I fill in "email_field" with "202Review@202Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "202Review_title"
		When I fill in "message" with "202Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"									

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "203Review"
		And I fill in "email_field" with "203Review@203Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "203Review_title"
		When I fill in "message" with "203Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "204Review"
		And I fill in "email_field" with "204Review@204Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "204Review_title"
		When I fill in "message" with "204Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "205Review"
		And I fill in "email_field" with "205Review@205Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "205Review_title"
		When I fill in "message" with "205Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "206Review"
		And I fill in "email_field" with "206Review@206Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "206Review_title"
		When I fill in "message" with "206Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"		

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "207Review"
		And I fill in "email_field" with "207Review@207Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "207Review_title"
		When I fill in "message" with "207Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "208Review"
		And I fill in "email_field" with "208Review@208Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "208Review_title"
		When I fill in "message" with "208Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"				

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "209Review"
		And I fill in "email_field" with "209Review@209Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "209Review_title"
		When I fill in "message" with "209Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"	
		
	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "210Review"
		And I fill in "email_field" with "210Review@210Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "210Review_title"
		When I fill in "message" with "210Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "211Review"
		And I fill in "email_field" with "211Review@211Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "211Review_title"
		When I fill in "message" with "211Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "212Review"
		And I fill in "email_field" with "212Review@212Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "212Review_title"
		When I fill in "message" with "212Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"	
		
	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "213Review"
		And I fill in "email_field" with "213Review@213Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "213Review_title"
		When I fill in "message" with "213Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"								

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "214Review"
		And I fill in "email_field" with "214Review@214Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "214Review_title"
		When I fill in "message" with "214Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"	
			
	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "215Review"
		And I fill in "email_field" with "215Review@215Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "215Review_title"
		When I fill in "message" with "215Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"			

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "216Review"
		And I fill in "email_field" with "216Review@216Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "216Review_title"
		When I fill in "message" with "216Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"		

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "217Review"
		And I fill in "email_field" with "217Review@217Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "217Review_title"
		When I fill in "message" with "217Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"		

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "218Review"
		And I fill in "email_field" with "218Review@218Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "218Review_title"
		When I fill in "message" with "218Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"		

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "219Review"
		And I fill in "email_field" with "219Review@219Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "219Review_title"
		When I fill in "message" with "219Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"

	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "OSX"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "220Review"
		And I fill in "email_field" with "220Review@220Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "220Review_title"
		When I fill in "message" with "220Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"				