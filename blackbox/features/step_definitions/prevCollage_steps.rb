Given(/^I am on the collage page$/) do
  visit "http://localhost:8081/CS310-ProjectOne/index.jsp"
  fill_in('searchtext', :with => "yellow")
  click_button("searchbutton")  
  sleep 30
end


#==========================================================================

When(/^I enter "([^"]*)" in the collage page search box$/) do |searchArg|
  fill_in('searchtext', :with => searchArg)
end

When(/^I press the Build Collage Again button$/) do
  click_button('searchbutton')
end

When(/^I click previously created collage titled "([^']*)"$/) do |arg1|
  find('[alt=' + arg1 + ']').click
end

Then(/^title should change to "([^']*)"$/) do |arg1|
  find(page).to have_content(arg1)
end

And(/^the main "([^']*)" collage should be scaled down$/) do |arg1|
  find('img[alt=' + arg1 + ']').native.css_value("height").should == "100px"
end

And(/^the clicked "([^']*)" collage should be scaled up$/) do
  find('img[alt=' + arg1 + ']').native.css_value("width").should == "100%"
end

And(/^the collage picker should be at the bottom of the page$/) do
end

And(/^the "([^']*)" collage should not be displayed in the collage picker$/) do
  find('img[alt=' + arg1 + ']').native.css_value("width").should != "100px"
end

And(/^the collage picker should display scaled down images of previous collages$/) do
  find('img[alt=vodka]').native.css_value("height").should == "100px"
end

#==========================================================================

When(/^I create 10 collages$/) do 
  fill_in('searchtext', :with => "computer")
  click_button("searchbutton")
  fill_in('searchtext', :with => "fish")
  click_button("searchbutton")
  fill_in('searchtext', :with => "google")
  click_button("searchbutton")
  fill_in('searchtext', :with => "mountain")
  click_button("searchbutton")
  fill_in('searchtext', :with => "orange")
  click_button("searchbutton")
  fill_in('searchtext', :with => "red")
  click_button("searchbutton")
  fill_in('searchtext', :with => "rock")
  click_button("searchbutton")
  fill_in('searchtext', :with => "space")
  click_button("searchbutton")
  fill_in('searchtext', :with => "ucla")
  click_button("searchbutton")
  fill_in('searchtext', :with => "usc")
  click_button("searchbutton")
end

Then(/^I should see a scroll bar on the previously created collages$/) do
  find('prev').native.css_value("overflow").should == "auto"
end






