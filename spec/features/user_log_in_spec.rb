feature 'A user can log in to their account' do
  scenario 'A registered user fills in Login form and logs in' do
    create_account
    visit('/')
    log_in
    expect(page).to have_content('You have logged in successfully')
  end

  scenario 'A non-registered user fills in Login form and receives error' do
    visit('/')
    log_in
    expect(page).to have_content('Please check your email or password')
  end
end
