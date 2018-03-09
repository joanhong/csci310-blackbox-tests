#2
Feature: Click on a previous collage
Background:
  Given I am on the collage page
  
Scenario:
  When I enter "ucla" in the collage page search box
  When I press the Build Collage Again button
  When I click previously created collage titled "yellow"
  Then the main "ucla" collage should be scaled down
  Then the clicked "yellow" collage should be scaled up
  #Then the collage picker should be at the bottom of the page
  Then the "yellow" collage should not be displayed in the collage picker
  Then the collage picker should display scaled down images of previous collages
  Then title should change to "Collage for topic yellow"

Scenario:
  When I create 10 collages
  Then I should see a scroll bar on the previously created collage
