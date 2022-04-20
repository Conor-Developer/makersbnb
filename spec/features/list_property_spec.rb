feature 'list property' do
    scenario 'list property with a name' do
      create_account
      visit('/')
      log_in
      click_button('List new property')
      fill_in 'Property name', with: "Mansion"
      click_button('Submit')
      expect(page).to have_content("Mansion")
    end
  end
