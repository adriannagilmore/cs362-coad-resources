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
    role = "organization"
    user = User.new(role: role)
    expect(user.set_default_role).to eq(role)
  end

  it 'expects set_default_role to return organization' do
    role = nil
    user = User.new(role: role)
    expect(user.set_default_role).to eq('organization')
  end

  describe 'validators' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_length_of(:email) 
          .is_at_least(1)
          .is_at_most(255)
          .on(:create) }
    it { is_expected.to validate_uniqueness_of(:email)
          .case_insensitive }

    it { is_expected.to validate_presence_of(:password)
          .on(:create) }
    it { is_expected.to validate_length_of(:password) 
          .is_at_least(7)
          .is_at_most(255)
          .on(:create) }
  end

end
