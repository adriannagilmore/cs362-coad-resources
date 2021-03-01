require 'rails_helper'

RSpec.describe 'Releasing a ticket by an', type: :feature do
  let(:organization) { create(:user, :organization) }
  let(:ticket) { create(:ticket) }
        
  it 'succeeds' do
    log_in_as(organization) 
    fake_ticket = ticket
    click_on 'Dashboard'
    click_on 'Tickets'
    click_on ticket.name
    click_on 'Capture'
    click_on 'Tickets'
    click_on ticket.name
    click_on 'Release'
    click_on 'Tickets'
    click_on ticket.name
    expect(page.body).to have_no_text('Release')
  end
end
