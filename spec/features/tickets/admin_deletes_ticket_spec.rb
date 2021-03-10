require 'rails_helper'

RSpec.describe 'Deleting a Ticket', type: :feature do
  let(:admin) { create(:user, :admin) }
  let(:ticket) { create(:ticket) }
    
  it 'succeeds' do
    log_in_as(admin) 
    fake_ticket = ticket
    click_on 'Dashboard'
    click_on ticket.name
    click_on 'Delete'
    expect(page.body).to have_text("#{ticket} was deleted")
    end
end
