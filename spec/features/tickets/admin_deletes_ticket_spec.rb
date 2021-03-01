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
    #was not sure if I should actually try to delete a ticket in the app to see what happens
    #expect(page.body).to have_text()
    end
end
