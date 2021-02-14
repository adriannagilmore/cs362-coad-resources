require 'rails_helper'

RSpec.describe Organization, type: :model do
  it 'exists' do
    Organization.new
  end
    
  it 'has a name' do
    organization = Organization.new
    expect(organization).to respond_to(:name)
  end

  it 'has a status' do
    organization = Organization.new
    expect(organization).to respond_to(:status)
  end

  it 'has a phone' do
    organization = Organization.new
    expect(organization).to respond_to(:phone)
  end

  it 'has an email' do
    organization = Organization.new
    expect(organization).to respond_to(:email)
  end

  it 'has a description' do
    organization = Organization.new
    expect(organization).to respond_to(:description)
  end

  it 'has a rejection_reason' do
    organization = Organization.new
    expect(organization).to respond_to(:rejection_reason)
  end

  it 'has a liability_insurance' do
    organization = Organization.new
    expect(organization).to respond_to(:liability_insurance)
  end

  it 'has a primary_name' do
    organization = Organization.new
    expect(organization).to respond_to(:primary_name)
  end

  it 'has a secondary_name' do
    organization = Organization.new
    expect(organization).to respond_to(:secondary_name)
  end

  it 'has a secondary_phone' do
    organization = Organization.new
    expect(organization).to respond_to(:secondary_phone)
  end

  it 'has a title' do
    organization = Organization.new
    expect(organization).to respond_to(:title)
  end

  it 'has transportation' do
    organization = Organization.new
    expect(organization).to respond_to(:transportation)
  end

  it 'expects set_default_status to not change status' do
    status = 'submitted'
    organization = Organization.new(status: status)
    expect(organization.set_default_status).to eq(status)
  end

  it 'expects set_default_status to return submitted' do
    status = nil
    organization = Organization.new(status: status)
    expect(organization.set_default_status).to eq('submitted')
  end

  it 'expects approve to return approved' do
    status = :approved
    organization = Organization.new(status: status)
    expect(organization.approve).to eq(status)
  end

  it 'expects reject to return rejected' do
    status = :rejected
    organization = Organization.new(status: status)
    expect(organization.reject).to eq(status)
  end

  it 'expects to_s to return a name' do
    name = 'name'
    organization = Organization.new(name: name)
    expect(organization.to_s).to eq(name)
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_presence_of(:status) }
    it { is_expected.to validate_presence_of(:primary_name) }
    it { is_expected.to validate_presence_of(:secondary_name) }
    it { is_expected.to validate_presence_of(:secondary_phone) }

    it { is_expected.to validate_length_of(:email) 
          .is_at_least(1)
          .is_at_most(255)
          .on(:create) }
    it { is_expected.to validate_length_of(:name) 
          .is_at_least(1)
          .is_at_most(255)
          .on(:create) }
    it { is_expected.to validate_length_of(:description) 
          .is_at_most(1020)
          .on(:create) }
    
    it { is_expected.to validate_uniqueness_of(:email)
          .case_insensitive }
    it { is_expected.to validate_uniqueness_of(:name)
          .case_insensitive }
  end
end
