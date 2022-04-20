require_relative '../lib/user'

describe User do
  it "can be created" do
    user = User.create(email: 'test@example.com', password: 'pass123')
    persisted_data = persisted_data(table: 'users', id: user.id)
    expect(user).to be_a User
    expect(user.email).to eq persisted_data.first['email']
  end
end
