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

end
