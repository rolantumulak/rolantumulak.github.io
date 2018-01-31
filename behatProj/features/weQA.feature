Feature: Homepage Wedoqa
    In order to visit the WeDoQA website
    As a website visitor
    I need to see the start page with links in header
 
    @javascript
    Scenario: Check homepage content
       Given I am on "/"
       When I click "References"
       Then I should see "Meet the team"
 
    @javascript
    Scenario: Check homepage content
       Given I am on "/"
       When I click "Contact info"
       Then I should see "office@wedoqa.com"