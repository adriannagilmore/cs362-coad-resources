require 'rails_helper'

RSpec.describe 'Deleting a Region', type: :feature do
  let(:admin) { create(:user, :admin) }
  let(:region) { create(:region) }

  it 'succeeds' do
    fake_region = region
    log_in_as(admin)
    click_on 'Regions'
    click_on region.name
    click_on 'Delete'
   # expect(page.body).to have_text()
    end
end
