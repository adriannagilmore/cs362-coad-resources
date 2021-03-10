require 'rails_helper'

RSpec.describe 'Creating a Ticket', type: :feature do
  let(:region) { create(:region) }
  let(:resource_category) { create(:resource_category) }

  it 'succeeds' do
    fake_region = region
    fake_category = resource_category
    visit dashboard_path
    click_on 'Disaster Resource Network'
    click_on 'Get Help'
    fill_in 'Name', with: 'Fake Name'
    fill_in 'Phone Number', with: '541-222-3333'
    select(region, from: 'Region')
    select(resource_category, from: 'Resource Category')
    fill_in 'Description', with: 'Help me'
    click_on 'Send this help request'
    expect(page.body).to have_text('Ticket Submitted')
  end
end
