require 'rails_helper'

RSpec.describe 'Creating an Organization Application', type: :feature do
  let(:admin) {create(:user, :admin)}
  let(:organization) {create(:organization)}

  it 'succeeds' do
    log_in_as(admin)
    fake_organization = organization
  end
end
