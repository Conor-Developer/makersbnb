require './lib/availability'

describe Availability do
  it 'checks availability refers to a specific date' do
    availability = Availability.create(date: Date.new(2022,04,21), availability: true, confirmation_pending?: false, property_id: 1)
    persisted_data = persisted_data(table: 'property_availability', id: availability.id)
    expect(availability).to be_a Availability
    expect(availability.date).to be_a Date
  end
end
