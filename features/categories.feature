 Feature: Create new categories 
  As a blog administrator
  In order to categorize my articles 
  I want to be able to create new categories in my blog
  
 Background:
    Given the blog is set up
    And I am logged into the admin panel

 Scenario: Successfully create new categories
    Given I am on the new categories page
    When I fill in "category_name" with "new_category"
    And I fill in "category_keywords" with "keyword_1"
    And I press "Save"
    Then I should see "Category was successfully saved."
