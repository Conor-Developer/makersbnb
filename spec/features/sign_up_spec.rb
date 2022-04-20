feature 'User can sign up and create an account' do
  scenario 'user fills in sign up form and submits' do
    visit('/')
    fill_in 'email', with: 'hello@gmail.com'
    fill_in 'password', with: 'password123'
    click_button('Sign Up')
    expect(page).to have_content('Account created successfully')
  end
end