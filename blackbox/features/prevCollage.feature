#2
Feature: Click on a previous collage
Background:
  Given I am on the collage page
  
Scenario:
  When I enter "vodka" in the collage page search box
  When I press the Build Collage Again button
  When I click previously created collage titled "yellow"
  Then title should change to "Collage for topic yellow"
  And the main "vodka" collage should be scaled down
  And the clicked "yellow" collage should be scaled up
  #And the collage picker should be at the bottom of the page
  And the "yellow" collage should not be displayed in the collage picker
  And the collage picker should display scaled down images of previous collages

Scenario:
  When I create 10 collages
  Then I should see a scroll bar on the previously created collage
