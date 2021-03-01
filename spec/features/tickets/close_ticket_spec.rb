require 'rails_helper'

RSpec.describe 'Closing a ticket', type: :feature do
  let(:admin) { create(:user, :admin) }
  let(:ticket) { create(:ticket) }
  
  it 'succeeds' do
    log_in_as(admin) 
    fake_ticket = ticket
    click_on 'Dashboard'
    click_on ticket.name
    click_on 'Close'
    click_on ticket.name
    expect(page.body).to have_text('Closed')
  end
end
