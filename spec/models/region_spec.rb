require 'rails_helper'

RSpec.describe Region, type: :model do

  it 'exists' do
    Region.new
  end

  it 'has a name' do
    region = Region.new
    expect(region).to respond_to(:name)
  end

# **I do not remember why we did this, something to think about doing I think**
#   it 'is not valid without a name' do
#     region = Region.new(name: "Fake Region")
#     expect(region).to be_valid
#     region.name = nil
#     exepect(region).to_not be_valid
#   end

end
