Feature: Add Reviews
	I will be able to search for a client
	I will be able to select employee
	I will be able to input name and email address
	I will be able to add review
	I will be able to refer

	@AddReviewWithReferral
	Scenario: Add buzzbox review with referral
		Given I am on "/"
		When I fill in "home_search_input" with "BuzzboxReview"
		And I press "Go"
		Then I should be on "/search_results?q=BuzzboxReview"
		Then I should see text matching "Best Match"
		When I click on "BuzzboxReview"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=BuzzboxReview&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "tech"
		And I wait for "5" seconds
		And I click on "Continue"
		And I fill in "name_field" with "new customer"
		And I fill in "email_field" with "newcustomer@newcustomer.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "Excellent"
		When I fill in "message" with "Very helpful and customer service is great"
		And I press "Submit"
		Then I should be on "portal/feedback/review_referral_only?company=BuzzboxReview"
		Then I should see text matching "Let your friends know about their great sevice!"
		And I fill in "note_field" with "Hey! they have great service, come try them"
		And I fill in "friend_email1" with "newfriendemail@rb.com"
		And I press "Get Discount"
		Then I should see text matching "An email will be sent to you with a discount coupon."
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for "5" seconds
		And I click on "Exit"		
		Then I save a screenshot

	@AddReviews
	Scenario: Add buzzbox review without referral
		Given I am on "/"
		When I fill in "home_search_input" with "peter piper"
		And I press "Go"
		Then I should be on "/search_results?q=peter+piper"
		Then I should see text matching "Best Match"
		When I click on "Peter Piper Plumbing"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=PeterPiperPlumbing&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "nolastname"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "110Review"
		And I fill in "email_field" with "110Review@110Review.com"
		And I press "Confirm"
		Then I should see text matching "Please Help By Writing A Review Below!"
		When I add "5" star review
		When I fill in "title" with "110Review_title"
		When I fill in "message" with "110Review_feedback"
		And I press "Submit"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I wait for 5 seconds
		And I click on "Exit"		
		Then I save a screenshot


	@AddSiteReviewsNoAccount
	Scenario: Add site review - I don't have account
		Given I am on "/"
		When I fill in "home_search_input" with "1800Anytyme"
		And I press "Go"
		Then I should be on "/search_results?q=1800Anytyme"
		Then I should see text matching "Best Match"
		When I click on "1800Anytyme"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=1800Anytyme&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "Grace"
		And I wait for "5" seconds
		And I click on "Continue"
		And I fill in "name_field" with "new customer"
		And I fill in "email_field" with "newcustomer@newcustomer.com"
		And I press "Confirm"
		Then I should see text matching "Pick a site to leave your review."
		And I click on "#content > div.review-sites-container > div > div > div > div > a > img"
		When I go back to main window
		And I wait for 5 seconds
		Then I should see text matching "Were you able to post your review?"
		When I click on "No"
		Then I should see text matching "Can you tell us what happened?"
		And I click on "I didn't have an account"
		And I wait for 5 seconds
		And I click on "Continue to BuzzBox"
		Then I should see text matching "Okay. You Can Help By Writing A Review Below."
		When I add "3" star review
		When I fill in "title" with "Average"
		When I fill in "message" with "Service is so-so"
		And I press "Post Your Review"
		And I wait for "5" seconds
		And I click on "Exit"		
		Then I save a screenshot

	@AddSiteReviewsAnonymous
	Scenario: Add site review - I want to post anonymously
		Given I am on "/"
		When I fill in "home_search_input" with "1800Anytyme"
		And I press "Go"
		Then I should be on "/search_results?q=1800Anytyme"
		Then I should see text matching "Best Match"
		When I click on "1800Anytyme"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=1800Anytyme&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "Grace"
		And I wait for "5" seconds
		And I click on "Continue"
		And I fill in "name_field" with "new customer"
		And I fill in "email_field" with "newcustomer@newcustomer.com"
		And I press "Confirm"
		Then I should see text matching "Pick a site to leave your review."
		And I click on "#content > div.review-sites-container > div > div > div > div > a > img"
		When I go back to main window
		And I wait for 5 seconds
		Then I should see text matching "Were you able to post your review?"
		When I click on "No"
		Then I should see text matching "Can you tell us what happened?"
		And I click on "I want to post anonymously"
		And I wait for 5 seconds
		And I click on "Write Your Review"
		Then I should see text matching "Okay. You Can Help By Writing A Review Below."
		When I add "1" star review
		When I fill in "title" with "Service Sucks"
		When I fill in "message" with "Not Helpful, full of excuses"
		And I press "Post Your Review"
		And I wait for "5" seconds
		And I click on "Exit"		
		Then I save a screenshot

	@AddSiteReviewsCannotPost
	Scenario: Add site review - I didn't know how to post
		Given I am on "/"
		When I fill in "home_search_input" with "1800Anytyme"
		And I press "Go"
		Then I should be on "/search_results?q=1800Anytyme"
		Then I should see text matching "Best Match"
		When I click on "1800Anytyme"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=1800Anytyme&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "Grace"
		And I wait for "5" seconds
		And I click on "Continue"
		And I fill in "name_field" with "new customer"
		And I fill in "email_field" with "newcustomer@newcustomer.com"
		And I press "Confirm"
		Then I should see text matching "Pick a site to leave your review."
		And I click on "#content > div.review-sites-container > div > div > div > div > a > img"
		When I go back to main window
		And I wait for 5 seconds
		Then I should see text matching "Were you able to post your review?"
		When I click on "No"
		Then I should see text matching "Can you tell us what happened?"
		And I click on "I didn't know how to post"
		And I wait for 5 seconds
		Then I should see text matching "Pick a star-rating & post a review below"
		When I add "5" star review
		When I fill in "title" with "Superb"
		When I fill in "message" with "Service is fast and fantastic"
		And I press "Post Your Review"
		And I wait for "5" seconds
		And I click on "Exit"		
		Then I save a screenshot


@AddSiteReviewsOther
	Scenario: Add site review - Other
		Given I am on "/"
		When I fill in "home_search_input" with "1800Anytyme"
		And I press "Go"
		Then I should be on "/search_results?q=1800Anytyme"
		Then I should see text matching "Best Match"
		When I click on "1800Anytyme"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=1800Anytyme&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "Grace"
		And I wait for "5" seconds
		And I click on "Continue"
		And I fill in "name_field" with "new customer"
		And I fill in "email_field" with "newcustomer@newcustomer.com"
		And I press "Confirm"
		Then I should see text matching "Pick a site to leave your review."
		And I click on "#content > div.review-sites-container > div > div > div > div > a > img"
		When I go back to main window
		And I wait for 5 seconds
		Then I should see text matching "Were you able to post your review?"
		When I click on "No"
		Then I should see text matching "Can you tell us what happened?"
		And I click on "Other"
		And I wait for 5 seconds
		When I fill in "message" with "I am a dumb person same with you"
		And I press "Send your comments"
		And I wait for "5" seconds
		And I click on "Exit"		
		Then I save a screenshot

@AddSiteReviewsBBBLogin
	Scenario: Add site review - BBB Login Required
		Given I am on "/"
		When I fill in "home_search_input" with "onboardBBB"
		And I press "Go"
		Then I should be on "/search_results?q=onboardBBB"
		Then I should see text matching "Best Match"
		When I click on "onboardBBB"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=onboardBBB&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "bbbtech"
		And I wait for 5 seconds
		And I click on "Continue"
		And I fill in "name_field" with "new customer"
		And I fill in "email_field" with "newcustomer@newcustomer.com"
		And I press "Confirm"
		When I go back to main window
		And I wait for 5 seconds
		Then I should see text matching "Were you able to post your review?"
		When I click on "Yes"
		Then I should see text matching "If you've enjoyed this experience, please like ReviewBuzz on Facebook below."
		And I click on "Exit"		
		Then I save a screenshot

@AddSiteReviewsBBB
	Scenario: Add site review - BBB 
		Given I am on "/"
		When I fill in "home_search_input" with "quitters"
		And I press "Go"
		Then I should be on "/search_results?q=quitters"
		Then I should see text matching "Best Match"
		When I click on "Quitters, Inc"
		Then I should be on "/portal/feedback/who_helped_you?bc=1&company=QuittersInc&start=1"
		Then I should see text matching "Who Helped You?"
		When I fill in "Search by first name" with "DD"
		And I wait for "5" seconds
		And I click on "Continue"
		And I fill in "name_field" with "new customer"
		And I fill in "email_field" with "newcustomer@newcustomer.com"
		And I press "Confirm"
		Then I should see text matching "Thanks! Would You Write A Review On Our BBB page?"
		And I press "Yes! I`ll Write a Review"
		When I go back to main window
		And I wait for 5 seconds
		Then I should see text matching "Were you able to post your review?"
		When I click on "Yes"
		Then I should see text matching "Thanks! Refer Quitters, Inc"
		And I press "No Thanks"
		And I click on "Exit"		
		Then I save a screenshot
