require 'rails_helper'

RSpec.describe DashboardController, type: :controller do

  it 'redirects to the sign_in screen' do
    get :index
    expect(response).to redirect_to(new_user_session_url)
  end
  
end
