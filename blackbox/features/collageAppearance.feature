#5 (appearance) (MIGHT NOT BE ABLE TO DO)
Feature: Collage Appearance

Background:
	Given I am on collage display page
	And a valid collage (no error) is displayed in the main collage space

#Scenario: Collage shape (IP OMIT)
	#Then the collage should have a rectangular shape with all photos contained in the shape
	#And the collage should have no empty space

Scenario: Collage location (LOCATION OMIT)
	And the collage should be centered in the page
	And the collage should appear under the collage title

#Scenario: Collage size
#	Then the collage should be between 40 and 70% of the browser viewport width, but not less than 800 pixels 
#	And the height must be between 35 and 50% of the browser viewport height, but not less than 600 pixels

#Scenario: Collage photo origin (API OMIT)
	#Then the collage photos are from the results of performing a Google image search with the topic
	#And there are 30 collage photos that are the top 30 photos from these results

#Scenario: Collage photo (IP OMIT)
	#Then the photo has a 3 pixel white frame surrounding it
	#And all photos are scaled to fit within the space allocated 
	#And the average size of the photos should be 1/20 of the collage space
	#And the photos should have a random rotation between -45 and 45 degrees

Scenario: Searching with less than 30 images available
	When I enter “gsjaflsajjad” in the search box
	And press the Build Another Collage button
	Then “Insufficient number of images found” should be displayed
	And error text should be black
	And error text size should be 18pt





