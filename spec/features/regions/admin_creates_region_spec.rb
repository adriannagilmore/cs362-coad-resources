require 'rails_helper'

RSpec.describe 'Creating a Region', type: :feature do
  let(:admin) { create(:user, :admin) }

  it 'succeeds' do
    region_name = 'Fake Region Meow'
    log_in_as(admin)
    click_on 'Regions'
    click_on 'Add Region'
    fill_in 'Name', with: region_name
    click_on 'Add Region'
    expect(page.body).to have_text('Region successfully created.')
    expect(page.body).to have_text(region_name)
  end
      
end
