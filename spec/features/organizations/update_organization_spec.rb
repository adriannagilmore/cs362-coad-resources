require 'rails_helper'

RSpec.describe 'Updating an Organization', type: :feature do
  let(:user) {create(:user, :organization)}
  let(:organization) {create(:organization)}
  
  it 'succeeds' do
    log_in_as(user)
    fake_organization = organization
    click_on 'Dashboard'
    click_on 'Edit Organization'
    fill_in 'Name', with: "Fake Name"
    click_on "Update Resource"
    #nothing happened when I clicked the Update Resource button
  end
end
