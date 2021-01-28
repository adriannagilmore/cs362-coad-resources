require 'rails_helper'

RSpec.describe User, type: :model do
  it 'exists' do
    User.new
  end

  it 'has an email' do
    user = User.new
    expect(user).to respond_to(:email)
  end

  it 'expects to_s to return an email' do
    email = 'myemail@email.com'
    user = User.new(email: email)
    expect(user.to_s).to eq(email)
  end

  it 'expects set_default_role to stay the same' do
  # fill me in
  end

  it 'expects set_default_role to return organization' do
  # fill me in
  end

end
