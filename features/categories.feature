# added this file as a part of HW 4
 Feature: Create new categories 
  As a blog administrator
  In order to categorize my articles 
  I want to be able to create new categories in my blog
  
 Background:
    Given the blog is set up
    And I am logged into the admin panel

 Scenario: Successfully create new categories
    Given I am on the new categories page
    When I fill in "category_name" with "new_category_1"
    And I fill in "category_keywords" with "keyword_1"
    And I fill in "category_description" with "description_1"
    And I press "Save"
    Then I should see "Category was successfully saved."
    
 Scenario: Successfully edit newly created category
    Given I am on the new categories page
    When I fill in "category_name" with "new_category_1"
    And I fill in "category_keywords" with "keyword_1"
    And I fill in "category_description" with "description_1"
    And I press "Save"
    Then I should see "Category was successfully saved."
    Given I am on the edit page for "new_category_1"
    And I fill in "category_description" with "description_1"
    And I press "Save"
    Then I should see "Category was successfully saved."