require 'rails_helper'

RSpec.describe Region, type: :model do

  it 'exists' do
    Region.new
  end

  it 'has a name' do
    region = Region.new
    expect(region).to respond_to(:name)
  end

  it 'is expected to have a region of unspecified' do
    expect(Region.unspecified.name).to eq('Unspecified')
  end

  it 'expects to_s to return a name' do
    name = 'myName'
    region = Region.new(name: name)
    expect(region.to_s).to eq(name)
  end

end
