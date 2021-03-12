require 'rails_helper'

RSpec.describe 'Approving an organization', type: :feature do
  let(:admin) {create(:user, :admin)}
  let(:organization) {create(:organization)}

  it 'succeeds' do
    log_in_as(admin)
    fake_organization = organization
    click_on 'Organizations'
    click_on 'Pending'
    click_on fake_organization.name, match: :first
    #click_on 'Approve'
    #expect(page.body).to have_text("Organization #{organization.name} has been approved.")
  end

end
