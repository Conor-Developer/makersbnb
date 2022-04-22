feature 'list property' do
    scenario 'list property with a name, description and price' do
      create_account
      visit('/')
      log_in
      click_button('List new property')
      fill_in 'name', with: "Mansion"
      fill_in 'description', with: "A luxurious 15 bedroom mansion on the riverside in the Maldives"
      fill_in 'price', with: 5000
      click_button('Submit')
      expect(page).to have_content("Mansion")
      expect(page).to have_content "A luxurious 15 bedroom mansion on the riverside in the Maldives"
      expect(page).to have_content "£5000 per night"
    end

    scenario 'list property with a start and end date' do
      create_account
      visit('/')
      log_in
      click_button('List new property')
      expect(page).to have_field('start_date', type: "date")
      expect(page).to have_field('end_date', type: "date")
    end
  end
