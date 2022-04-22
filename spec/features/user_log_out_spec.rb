feature 'A registered user can log out' do
  scenario 'a registered user logins and then logs out' do
    create_account
    visit('/')
    log_in
    click_button('Log out')
    expect(page).to have_content('You have successfully logged out')
  end
end