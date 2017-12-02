And("I am logged in") do
  visit login_path
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @password
  click_on "Submit"
  expect(page).to have_link("Statistics")
end

Given("I have clients") do
  @client=FactoryBot.create(:client, user:@user)
end

Then("I should see my client list") do
  expect(page).to have_content(@client.name)
  expect(page).to have_content(@client.codice_fiscale)
  expect(page).to have_content(@client.email)
  expect(page).to have_content(@client.partita_iva)
  expect(page).to have_content(@client.address)
end
