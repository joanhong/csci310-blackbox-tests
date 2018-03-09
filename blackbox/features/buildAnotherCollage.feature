#4
Feature: Build Another Collage
Background:
	Given I am on collage display page

#4a
Scenario: Building another collage with button
	When I enter "orange" in the Build Another Collage Input box
	And press the Build Another Collage button
	Then I should see the collage page with a collage for topic “orange”
	And title should display “Collage for topic orange”

#4b
Scenario: Build Another Collage Button
	Then the color of the Build Another Collage Button should be dark gray
	And the text on the Build Another Collage Button should be white
	And the text should say “Build Another Collage” 

#4c
Scenario: Build Another Collage Input Box
	Then the input box should prompt “Enter Topic”
	And the background color should be white
	And the outline should be dark gray
	And located to the left of the Build Another Collage button

#4d
Scenario: Building another collage with enter
	When I enter “pink” in the Build Another Collage Input box
	And hit enter the Build Another Collage button
	Then I should see the collage page with a collage for topic “pink”

#4e
Scenario: Prompt text disappear
	When I enter "a" in the Build Another Collage Input box
	Then the prompt text should disappear

#4f
#Scenario: Build Another Collage Button location
#	Then the button should appear underneath the collage 
#	And the button should appear slightly to the right of center


	

