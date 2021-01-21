require 'rails_helper'

RSpec.describe User, type: :model do
  it 'exists' do
    User.new
  end

  it 'has an email' do
    user = User.new
    expect(user).to respond_to(:email)
  end

  it 'has an encrypted_password' do
    user = User.new
    expect(user).to respond_to(:encrypted_password)
  end

  it 'has a reset_password_token' do
    user = User.new
    expect(user).to respond_to(:reset_password_token)
  end

  it 'has a reset_password_sent_at' do
    user = User.new
    expect(user).to respond_to(:reset_password_sent_at)
  end

  it 'has a remember_created_at' do
    user = User.new
    expect(user).to respond_to(:remember_created_at)
  end

  it 'has a created_at' do
    user = User.new
    expect(user).to respond_to(:created_at)
  end

  it 'has a updated_at' do
    user = User.new
    expect(user).to respond_to(:updated_at)
  end

  it 'has a confirmation_token' do
    user = User.new
    expect(user).to respond_to(:confirmation_token)
  end

  it 'has a confirmation_sent_at' do
    user = User.new
    expect(user).to respond_to(:confirmation_sent_at)
  end

  it 'has a confirmed_at' do
    user = User.new
    expect(user).to respond_to(:confirmed_at)
  end

  it 'has an unconfirmed_email' do
    user = User.new
    expect(user).to respond_to(:unconfirmed_email)
  end

  it 'has a role' do
    user = User.new
    expect(user).to respond_to(:role)
  end

  it 'has an organization_id' do
    user = User.new
    expect(user).to respond_to(:organization_id)
  end
end
