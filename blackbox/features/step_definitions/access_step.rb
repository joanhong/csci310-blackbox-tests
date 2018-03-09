Then(/^the application is available via the localhost interface of a webserver$/) do
  expect(page).not_to have_content("localhost refused to connect.")
end
