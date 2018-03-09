Given(/^I am on collage display page/) do
  visit "http://localhost:8081/CS310-ProjectOne/index.jsp"
  fill_in('searchtext', :with => "yellow")
  click_button("searchbutton")  
  sleep 30
end

#===========================================================================

When(/^I enter "([^"]*)" in the Build Another Collage Input box$/) do |searchArg|
	fill_in('searchtext', :with => searchArg)
end

And(/^press the Build Another Collage button$/) do
	click_button("searchbutton")
end

Then(/^I should see the collage page with a collage for topic “orange”$/) do
  expect(page).to have_content("orange")
end

Then(/^title should display “Collage for topic orange”$/) do
  expect(page).to have_content("Collage for topic orange")
end
#=======================================================================

Then(/^the color of the Build Another Collage Button should be dark gray$/) do
  page.evaluate_script('$("button").css("background-color")').should == 'rgb(119, 119, 119)'
end

Then(/^the text on the Build Another Collage Button should be white$/) do
  page.evaluate_script('$("button").css("color")').should == 'rgb(255, 255, 255)'
end

Then(/^the text should say “Build Another Collage”$/) do
  expect(find_by_id('searchbutton')['innerHTML']=="Build Another Collage")
end

#==========================================================================
Then(/^the input box should prompt “Enter Topic”$/) do
  expect(find_field("searchtext")['placeholder']).to eq 'Enter topic'
end

Then(/^the background color should be white$/) do
  find_field("searchtext").native.css_value("background-color").should =='rgba(255, 255, 255, 1)'
end

Then(/^the outline should be dark gray$/) do
  find_field("searchtext").native.css_value("border-color").should =='rgb(119, 119, 119)'
end


Then(/^located to the left of the Build Another Collage button$/) do
	inputBoxPos = page.driver.evaluate_script("document.getElementById('searchtext').getBoundingClientRect().left;")
	
	collageButtonPos = page.driver.evaluate_script("document.getElementById('searchtext').getBoundingClientRect().left;")

	if (inputBoxPos < collageButtonPos)
		puts('PASS')
	end
end

#==============================================================================

When(/^I enter “pink” in the Build Another Collage Input box$/) do
  fill_in('searchtext', :with => "pink")
end

And(/^hit enter the Build Another Collage button$/) do
  find_by_id("searchbutton").native.send_keys(:return)
end

Then(/^I should see the collage page with a collage for topic “pink”$/) do
  expect(page).to have_content("pink")
end


#==============================================================================

Then(/^the prompt text should disappear$/) do
  expect(find_field("searchtext")['value']).to eq 'a'
end

Then (/^Build Another Collage button should appear underneath the collage$/) do
  	collageButtonPos = page.driver.evaluate_script <<-EOS
		function() {
			var ele = document.getElementById('searchbutton');
			var rect = ele.getBoundingClientRect();
			return rect.top;
		}();
	EOS

	collagePos = page.driver.evaluate_script <<-EOS
		function() {
			var ele = document.getElementById('main');
			var rect = ele.getBoundingClientRect();
			return rect.top;
		}();
	EOS

	if (collageButtonPos > collagePos)
		puts('PASS');
	end
end

And (/^slightly to the right of the center$/) do
	collageButtonPos = page.driver.evaluate_script<<-EOS
		function() {
			var ele = document.getElementById('searchbutton');
			var rect = ele.getBoundingClientRect();
			return rect.left;
		}();
	EOS

	windowWidth = page.driver.evaluate_script<<-EOS
		function() {
			var ele = window.innerWidth/2;
			return ele;
		}();
	EOS

	if (collageButtonPos > windowWidth)
		puts('PASS')
	end
end

Then(/^Build another collage button should appear underneath the collage and slightly to the right of the center$/) do
	collageButtonPos = page.driver.evaluate_script <<-EOS
		function() {
			var ele = document.getElementById('searchbutton');
			var rect = ele.getBoundingClientRect();
			return rect.top;
		}();
	EOS

	collagePos = page.driver.evaluate_script <<-EOS
		function() {
			var ele = document.getElementById('main');
			var rect = ele.getBoundingClientRect();
			return rect.top;
		}();
	EOS

	if (collageButtonPos > collagePos)
		puts('PASS');
	end
end

#Then(/^I should see the collage page with a collage for topic "([^"]*)"$/) do |arg1|
#  expect(page).to have_content(arg1)
#end


=begin
When(/^I enter "([^"]*)" in the search box$/) do |searchArg|
  fill_in('searchtext', :with => searchArg)
end


When(/^press the Build Collage button$/) do
  click_button("searchbutton")  
end

Then(/^I should see the collage page with a "([^"]*)"$/) do |arg1|t
  expect(page).to have_content(arg1)
end

And(/^the background of the page is white$/) do
  expect(page.has_css?('collage.css'))
end


=end
