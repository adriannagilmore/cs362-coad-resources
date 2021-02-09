require 'rails_helper'

RSpec.describe RegionsController, type: :controller do

  context 'unauthenticated users' do
    describe '#index' do
      it 'redirects to the sign_in screen' do
        get :index
        expect(response).to redirect_to(new_user_session_url)
      end
    end
  end

end
