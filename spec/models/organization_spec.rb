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
    #fill me in
  end

  it 'expects set_default_status to return submitted' do
    #fill me in
      #if status is nil change to submitted
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
end
