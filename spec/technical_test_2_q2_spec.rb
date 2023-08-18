require 'rspec-rails'
require 'active_record'
require 'technical_test_2_q2'

RSpec.describe User, type: :model do
  context 'Create and associations user' do
    it 'has a valid name' do
      user = User.new(name: 'Caio')
      expect(user.valid?).to be(true)
    end

    it 'can have multiple event_users' do
      user = User.new(name: 'Jack')
      event_user_1 = EventUser.new(user: user)
      event_user_2 = EventUser.new(user: user)
      user.event_users << event_user_1
      user.event_users << event_user_2
      expect(user.event_users.count).to eq(2)
    end
  end
end

RSpec.describe Event, type: :model do
  context 'Create and associations Event' do
    it 'can have multiple event_users' do
      event = Event.new(name: 'Conferencia')
      user_1 = User.new(name: 'Ana')
      user_2 = User.new(name: 'Joao')
      event_user_1 = EventUser.new(user: user_1)
      event_user_2 = EventUser.new(user: user_2)
      event.event_users << event_user_1
      event.event_users << event_user_2
      expect(event.event_users.count).to eq(2)
    end
    it 'can have multiple awards' do
      event = Event.new(name: 'Congresso')
      award_1 = Award.new(name: 'First-Place')
      award_2 = Award.new(name: 'Second-Place')
      event.awards << award_1
      event.awards << award_2
      expect(event.awards.count).to eq(2)
    end
  end
end
RSpec.describe EventUser, type: :model do
  context 'associations' do
    it 'belongs to a user' do
      user = User.new(name: 'Carina')
      event_user = EventUser.new(user: user)
      expect(event_user.user).to eq(user)
    end
    it 'belongs to an event' do
      event = Event.new(name: 'Conferencia')
      event_user = EventUser.new(event: event)
      expect(event_user.event).to eq(event)
    end
  end
end
RSpec.describe Award, type: :model do
  context 'associations' do
    it 'belongs to an event' do
      event = Event.new(name: 'Contest')
      award = Award.new(name: event)
      expect(award.event).to eq(event)
    end
  end
end