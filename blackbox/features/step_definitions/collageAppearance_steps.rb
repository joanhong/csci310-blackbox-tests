
Given(/^a valid collage \(no error\) is displayed in the main collage space$/) do
	find('[id=collage]').should have_no_content('Insufficient number of images found')
end

Then(/^the collage should be between 40 and 70% of the browser viewport width, but not less than 800 pixels$/) do
	browserWidth = page.evaluate_script('window.innerWidth.valueOf()')
	if (find('[id=main]').native.css_value("width").to_f.should >= (0.4 * browserWidth)) or (find('[id=main]').native.css_value("width").to_f.should <= (0.7 * browserWidth))
		puts("Between 40 and 70%")
	elsif (find('[id=main]').native.css_value("width").to_f.should >= (0.7 * browserWidth)) and (find('[id=main]').native.css_value("width").to_f == 800)
		puts("Greater than 70% and 800")
	else
		fail("Not meeting requirement")
	end
end

And(/^the height must be between 35 and 50% of the browser viewport height, but not less than 600 pixels$/) do
	browserHeight = page.evaluate_script('window.innerHeight.valueOf()')
	if (find('[id=main]').native.css_value("height").to_f.should >= (0.35 * browserHeight)) or (find('[id=main]').native.css_value("height").to_f.should <= (0.5 * browserHeight))
		puts("Between 35 and 50%")
	elsif (find('[id=main]').native.css_value("height").to_f.should >= (0.5 * browserHeight)) and (find('[id=main]').native.css_value("height").to_f == 600)
		puts("Greater than 50% and 600")
	else
		fail("Not meeting requirement")
	end
end

When(/^I enter “gsjaflsajjad” in the search box$/) do
	fill_in('searchtext', :with => 'gsjaflsajjad')
end


Then(/^“Insufficient number of images found” should be displayed$/) do
	sleep 3
	expect(page).to have_content("Insufficient number of images found")
end

Then(/^error text should be black$/) do
  	find('[id=error]').native.css_value('color').should == "rgba(0, 0, 0, 1)"
end

Then(/^error text size should be 18pt$/) do
  	find('[id=error]').native.css_value('font-size').should == "24px"
end



