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

def list_property
    click_button('List new property')
    fill_in 'name', with: 'flat'
    fill_in 'description', with: '1 bed '
    fill_in 'price', with: '100'
    fill_in 'start_date', with: '20/02/2022'
    fill_in 'end_date', with: '22/02/2022'
    click_button('Submit')
end
