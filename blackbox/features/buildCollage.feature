Feature: Build Collage

Background:

	Given I am on the initial page

Scenario: Build collage (press button)

	When I enter "yellow" in the search box
	When I press the Build Collage button
	Then I should see the collage page with a collage for topic "yellow"
	Then the background of the page is white

Scenario: Build collage with no search text

	When I press the Build Collage button
	Then I should still see the initial page and no collage should build

Scenario: Collage title

	When I enter "Cucumber" in the search box
	When I press the Build Collage button
	Then I should see the collage page with title “Collage for topic Cucumber”
	And the title should be at the top of the page
	And the title should be in at least 24pt font
	And the title should be black

Scenario: Background

	Then the webpage has a solid light grey background

Scenario: Search box

	Then the search box has a dark gray outline
	And the search box is centered in the middle of the page
	And the search box has prompt text “Enter topic” in very light grey
	And the search box has white background color

Scenario: User types into search box

	When I enter "a" in the search box
	Then the prompt text should disappear



