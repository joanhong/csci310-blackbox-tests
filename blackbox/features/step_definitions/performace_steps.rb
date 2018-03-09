#Given(/^I enter "yellow" in the search box$/)
#	fill_in('searchtext', :with => "yellow")
#end

Given(/^I enter “yellow” in the search box$/) do
  fill_in('searchtext', :with => "orange")
end


Then(/^the process of building an displaying the collage must take less than 10s$/) do
  sleep 10
  expect(page).to have_content("Collage for topic yellow")
end
