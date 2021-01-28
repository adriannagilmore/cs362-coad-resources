require 'rails_helper'

RSpec.describe ResourceCategory, type: :model do
  it 'has a name' do
    resource_categories = ResourceCategory.new
    expect(resource_categories).to respond_to(:name)
  end

  it 'is active' do
    resource_categories = ResourceCategory.new
    expect(resource_categories).to respond_to(:active)
  end
end
