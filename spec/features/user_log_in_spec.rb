feature 'A user can log in to their account' do
  scenario 'A registered user fills in Login form and logs in' do
    create_account
    visit('/')
    click_link('Login')
    fill_in 'email', with: 'hello@gmail.com'
    fill_in 'password', with: 'password123'
    click_button('Login')
    expect(page).to have_content('You have logged in successfully')
  end

  scenario 'A non-registered user fills in Login form and receives error' do
    visit('/')
    click_link('Login')
    fill_in 'email', with: 'hello@gmail.com'
    fill_in 'password', with: 'password123'
    click_button('Login')
    expect(page).to have_content('Please check your email or password')
  end
end
