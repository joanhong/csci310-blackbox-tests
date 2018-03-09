#2
Feature: Click on a previous collage
Background:
  Given I am on the initial page
  

Scenario:
  When I enter "green" in the initial page search box
  When I press the Build Collage button
  When I see the collage page with "Collage for topic green" 
  When I enter "yellow" in the collage page search box
  When I press the Build Collage Again button
  When I click previously created collage titled "green"
  Then title should change to "Collage for topic green"
  #And the main collage should be scaled down
  #And the clicked collage should be scaled up
