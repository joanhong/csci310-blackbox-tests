#7
Feature: Performance

Background:
	Given I am on the initial page
	And I enter “yellow” in the search box
	And I press the Build Collage button

Scenario: Build and display performance in less than 10 seconds
	Then the process of building an displaying the collage must take less than 10s
