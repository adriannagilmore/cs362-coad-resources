require 'rails_helper'

RSpec.describe 'Logging in', type: :feature do
  let(:organization) { create(:user, :organization) }

  it 'succeeds' do
    user = organization
    visit dashboard_path
    click_on 'Log in'
    fill_in 'Email address', with: user.email
    fill_in 'Password', with: 'password'
    click_on 'Sign in'
    expect(page.body).to have_text('Signed in successfully')
  end
end
