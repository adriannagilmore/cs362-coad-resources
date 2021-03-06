require 'rails_helper'

RSpec.describe ResourceCategoriesController, type: :controller do

  context 'unauthenticated users' do
    
    it 'redirects to the sign_in screen' do
      get :index
      expect(response).to redirect_to(new_user_session_url)
      get :new
      expect(response).to redirect_to(new_user_session_url)
      post :create
      expect(response).to redirect_to(new_user_session_url)
      get :update, params: {id: 'fake'}
      expect(response).to redirect_to(new_user_session_url)
      get :activate, params: {id: 'fake'}
      expect(response).to redirect_to(new_user_session_url)
      get :deactivate, params: {id: 'fake'}
      expect(response).to redirect_to(new_user_session_url)
      get :destroy, params: {id: 'fake'}
      expect(response).to redirect_to(new_user_session_url)
    end

  end

  context 'organization users' do
    
    before do
      organization_user = build(:user, :organization)
      allow(request.env['warden']).to receive(:authenticate!).and_return(organization_user)
      allow(controller).to receive(:current_user).and_return(organization_user)
    end

    it 'redirects to the dashboard' do
      get :index
      expect(response).to redirect_to(dashboard_url)
      get :new
      expect(response).to redirect_to(dashboard_url)
      post :create
      expect(response).to redirect_to(dashboard_url)
      get :update, params: {id: 'fake'}
      expect(response).to redirect_to(dashboard_url)
      get :activate, params: {id: 'fake'}
      expect(response).to redirect_to(dashboard_url)
      get :deactivate, params: {id: 'fake'}
      expect(response).to redirect_to(dashboard_url)
      get :destroy, params: {id: 'fake'}
      expect(response).to redirect_to(dashboard_url)
    end
  end

end
