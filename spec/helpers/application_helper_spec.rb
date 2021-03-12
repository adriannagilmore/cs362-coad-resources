require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '#full_title' do
    it 'returns base_title' do
      page_title = double()
      allow(page_title).to receive(:empty?) {true} 
      expect(full_title(page_title)).to eq('Disaster Resource Network')
    end
    it 'returns page_title | base_title' do
      page_title = double()
      allow(page_title).to receive(:empty?) {false}
      expect(full_title(page_title)).to eq("#{page_title} | Disaster Resource Network")
    end
  end
end
