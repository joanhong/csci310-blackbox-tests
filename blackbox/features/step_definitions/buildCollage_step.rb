Given(/^I am on the initial page$/) do
	visit "http://localhost:8081/CS310-ProjectOne/index.jsp"
end

When(/^I enter "([^"]*)" in the search box$/) do |searchArg|
	fill_in('searchtext', :with => searchArg)
end

When(/^I press the Build Collage button$/) do
	find('[id=searchbutton]').click
end

Then(/^I should see the collage page with a collage for topic "([^"]*)"$/) do |arg1|
	#expect("title").to have_title arg1
	expect(page).to have_content(arg1)
end

Then(/^the background of the page is white$/) do
	page.evaluate_script('$("body").css("background-color")').should == 'rgb(255, 255, 255)'
end

Then(/^I should still see the initial page and no collage should build$/) do
	current_url.should == "http://localhost:8081/CS310-ProjectOne/index.jsp"
end

Then(/^I should see the collage page with title “([^"]*)”$/) do |arg1|
	expect(page).to have_content(arg1)
end

And(/^the title should be at the top of the page$/) do
	
end

And(/^the title should be in at least 24pt font$/) do
	find('[id=title]').native.css_value('font-size').should == '32px'
end

And(/^the title should be black$/) do
	find('[id=title]').native.css_value('color').should == 'rgba(0, 0, 0, 1)'
end

Then(/^the webpage has a solid light grey background$/) do
	page.evaluate_script('$("body").css("background-color")').should == 'rgb(184, 184, 184)'
end

Then(/^the search box has a dark gray outline$/) do
	find('[id=searchtext]').native.css_value('border').should == '2px solid rgb(119, 119, 119)'
end

#And(/^the search box is centered in the middle of the page$/) do
#
#end

#And(/^the search box has prompt text “Enter topic” in very light grey$/) do
#	find('[id=searchtext]')['placeholder'].should == 'Enter topic'
#	find('[id=searchtext]')['::placeholder'].native.css_value('color').should == 'rgba(0, 0, 0, 1)'
#end

And(/^the search box has white background color$/) do
	find('[id=searchtext]').native.css_value('background-color').should == 'rgba(255, 255, 255, 1)'
end

#Then(/^the prompt text should disappear$/) do
#	find('[id=searchtext]').should have_no_content("Enter topic")
#end
	
And(/^press Enter in the search box$/) do
  find_by_id("searchbutton").native.send_keys(:return)
end

Then(/^the Build Collage button should be dark grey$/) do
  find('[id=searchbutton]').native.css_value('background-color').should == 'rgba(119, 119, 119, 1)'
end

#Then(/^be to the right of the input box$/) do
  
#end

Then(/^should be labeled with text that says "([^"]*)"$/) do |arg1|
  expect(find_by_id('searchbutton')['innerHTML']==arg1)
end

Then(/^the text color should be white$/) do
   page.evaluate_script('$("button").css("color")').should == 'rgb(255, 255, 255)'
end







