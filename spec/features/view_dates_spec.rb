feature 'list all available dates' do
  scenario 'has link to to view dates' do
  property = Property.create(name: 'Mansion', description: '1 bedroom', price: 10)
    create_account
    visit('/')
    log_in
    expect(page).to have_link('Mansion', href: "/properties/#{property.id}" )
  end

  scenario 'list all available dates' do
    create_account
    visit('/')
    log_in
    list_property
    first('.properties').click_link
    today = Date.today.strftime("%d/%m/%Y")
    tomorrow = Date.tomorrow.strftime("%d/%m/%Y")
    expect(page).to have_content(today)
    expect(page).to have_content(tomorrow)
  end
end
