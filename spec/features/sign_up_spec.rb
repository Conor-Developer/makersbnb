feature 'User can sign up and create an account' do
  scenario 'user fills in sign up form and submits' do
    create_account
    expect(page).to have_content('Account created successfully')
  end
end