feature "Booking" do
  scenario "the renter can click on an available date to book" do
    create_account
      visit('/')
      log_in
      list_property
      first('.properties').click_link
      first('.book').click_button('Book')
      today = Date.today.strftime("%d/%m/%Y")
      expect(page).to have_content "Thank you for booking this day for this property"
  end
end