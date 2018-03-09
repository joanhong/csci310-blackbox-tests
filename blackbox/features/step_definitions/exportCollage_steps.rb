When(/^I click the export collage button$/) do
	click_button("export")
end


#Then(/^the file downloaded should be a PNG$/) do
#	page.response_headers["Content-Disposition"].should include('.png')
#end

Then(/^the export collage button should be dark grey$/) do
  page.evaluate_script('$("#export").css("background-color")').should == 'rgb(119, 119, 119)'
end

Then(/^the button should have label text “Export Collage”$/) do
  expect(find_by_id('export')['innerHTML']=="Export Collage")
end

Then(/^the label text color is white$/) do
  page.evaluate_script('$("#export").css("color")').should == 'rgb(255, 255, 255)'
end



Then (/^the Export Collage button color is dark grey, has label text “([^\”]*)”, and label color is white $/) do |label|
	page.evaluate_script('$("#export").css("background-color")').should == 'rgb(119, 119, 119)'
	page.evaluate_script('$("#export").css("color")').should == 'rgb(255, 255, 255)'
	page.evaluate_script('$("#export").innerHTML’').should == label
end
