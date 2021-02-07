require 'rails_helper'

RSpec.describe ResourceCategory, type: :model do
  it 'has a name' do
    resource_categories = ResourceCategory.new
    expect(resource_categories).to respond_to(:name)
  end

  it 'has active attribute' do
    resource_categories = ResourceCategory.new
    expect(resource_categories).to respond_to(:active)
  end

  it 'has many tickets' do
    expect(ResourceCategory.new).to respond_to(:tickets)
  end

  it 'has and belongs to many organizations' do
    expect(ResourceCategory.new).to have_and_belong_to_many(:organizations)
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name) 
          .is_at_least(1)
          .is_at_most(255)
          .on(:create) }
  end

  it 'has a string representation that is its name' do
    expect(ResourceCategory.new(name: 'Fake').to_s).to eq('Fake')
  end

  it 'is inactive when its active attribute is false' do
    rc = ResourceCategory.new(active: false)
    expect(rc).to be_inactive
    rc.active = true
    expect(rc.inactive?).to be_falsy
  end

  it 'becomes active when activated' do
    rc = ResourceCategory.new(active: false)
    expect(rc.active).to be_falsy
    rc.activate
    expect(rc.active).to be_truthy
  end

  describe 'ResourceCategory#unspecified' do
    it 'returns a ResourceCategory with the name Unspecified' do
      result = ResourceCategory.unspecified
      expect(result.name).to be('Unspecified')
    end
  end

  describe 'active' do
    it 'includes active resource categories and not inactive ones' do
      active_resource_category = ResourceCategory.create(name: 'Active Category', active: true)
      inactive_resource_category = ResourceCategory.create(name: 'Inactive Category', active: false)
      results = ResourceCategory.active
      expect(results).to include(active_resource_category)
      expect(results).to_not inlcude(inactive_resource_category)
    end
  end

end
