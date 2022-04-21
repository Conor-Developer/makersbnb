feature 'list all available dates' do
    scenario 'has link to to view dates' do
    property = Property.create(name: 'Mansion', description: '1 bedroom', price: 10)
      create_account
      visit('/')
      log_in
      # first('.properties').click_button
      expect(page).to have_link('Mansion', href: "/properties/#{property.id}" )
    end

    scenario 'list all available dates' do
      property = Property.create(name: 'Mansion', description: '1 bedroom', price: 10)
      create_account
      visit('/')
      log_in
      list_property
      first('.properties').click_link
      expect(page).to have_content('20/04/2022')
      expect(page).to have_content('21/04/2022')
      expect(page).to have_content('22/04/2022')
    end
  end
