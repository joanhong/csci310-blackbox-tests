#3
Feature: Export current collage
Background:
	Given I am on collage display page
	
#3a
#Scenario: File type
#	When I click the export collage button
#	Then the file downloaded should be a PNG

#3b
#Scenario: Size of image
#	When I click the export collage button
#	Then the collage size should match the collage displayed

#3c
Scenario: Export Collage button type
	Then the export collage button should be dark grey
	And the button should have label text “Export Collage”
	And the label text color is white

