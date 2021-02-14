require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it 'has a name' do
    ticket = Ticket.new
    expect(ticket).to respond_to(:name)
  end

  it 'has a description' do
    ticket = Ticket.new
    expect(ticket).to respond_to(:description)
  end

  it 'has a phone' do
    ticket = Ticket.new
    expect(ticket).to respond_to(:phone)
  end

  it 'is closed' do
    ticket = Ticket.new
    expect(ticket).to respond_to(:closed)
  end

  it 'has closed_at' do
    ticket = Ticket.new
    expect(ticket).to respond_to(:closed_at)
  end

  describe 'validators' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_presence_of(:region_id) }
    it { is_expected.to validate_presence_of(:resource_category_id) }

    it { is_expected.to validate_length_of(:name) 
          .is_at_least(1)
          .is_at_most(255)
          .on(:create) }
    it { is_expected.to validate_length_of(:description) 
          .is_at_most(1020)
          .on(:create) }
  end

  describe 'scopes' do

    describe 'closed' do
      it 'contains closed tickets' do
        closed_ticket = create(:ticket, :closed)
        expect(Ticket.closed).to include(closed_ticket)
      end
      it 'contains non-closed tickets' do
        non_closed_ticket = create(:ticket)
        expect(Ticket.closed).to_not include(non_closed_ticket)
      end
    end

    describe 'region' do
      it 'returns a ticket for a region given that region\'s id' do
        ticket = create(:ticket)
        region = ticket.region
        expect(Ticket.region(region.id)).to include(ticket)
      end
      it 'does not return a ticket for a different region id' do
        ticket = create(:ticket)
        region = ticket.region
        other_region_ticket = build(:ticket)
        other_region_ticket.region = create(:region, name: 'New Fake Region')
        expect(Ticket.region(region.id)).to_not include(other_region_ticket)
      end
    end

  end

end
