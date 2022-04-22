require './lib/availability'

describe Availability do
  it 'checks availability refers to a specific date' do
    availability = Availability.create(date: '21/04/2022', available?: true, confirmation_pending?: false, property_id: 1)
    persisted_data = persisted_data(table: 'availabilities', id: availability.id)
    expect(availability).to be_a Availability
    expect(availability.date).to be_a(Date)
  end
end
