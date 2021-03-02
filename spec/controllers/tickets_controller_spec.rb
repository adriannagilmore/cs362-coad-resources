require 'rails_helper'

RSpec.describe TicketsController, type: :controller do

  context 'organization users' do
    before do
      organization_user = build(:user, :organization)
      allow(request.env['warden']).to receive(:authenticate!).and_return(organization_user)
      allow(controller).to receive(:current_user).and_return(organization_user)
    end
    
    it 'redirects to the dashboard' do
      get :destroy, params: {id: 'fake'}
      expect(response).to redirect_to(dashboard_url)
    end
    
  end

end
