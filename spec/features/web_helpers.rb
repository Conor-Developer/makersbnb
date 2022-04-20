def create_account
    visit('/')
    fill_in 'email', with: 'hello@gmail.com'
    fill_in 'password', with: 'password123'
    click_button('Sign Up')
end

def log_in
    click_link('Login')
    fill_in 'email', with: 'hello@gmail.com'
    fill_in 'password', with: 'password123'
    click_button('Login')
end
