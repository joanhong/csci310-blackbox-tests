When(/^I click the export collage button$/) do
	find_by_id("export").click
end

Then(/^the file downloaded should be a PNG$/) do
	download_extension = File.extname(File.basename(download))
	download_extension.should == ".png"
end

#Then(^the size of the collage downloaded should match the collage displayed$/) do |content|
#	downloadContent.should == content
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
