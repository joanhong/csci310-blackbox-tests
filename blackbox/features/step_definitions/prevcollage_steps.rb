Given(/^I am on the initial page$/) do
  visit "http://localhost:8081/CS310-ProjectOne/index.jsp"
end


#Scenario
When(/^I enter "([^"]*)" in the initial page search box$/) do |arg1|
  fill_in('searchtext', :with => arg1)
end

#When(/^I press the Build Collage button$/) do
#  click_button('searchbutton')
#end

When(/^I see the collage page with "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

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

And(/^the main collage should be scaled down$/) do
end

And(/^the clicked collage should be scaled up$/) do
end





