require 'rails_helper'

RSpec.describe UsersController, type: :controller do

    login_user

    let(:valid_attributes) {
        { :fullname => "Joey Shmoey", :email => "text@testing.com", :password => "asdf123" }
    }

    let(:valid_session) { {} }

    describe "GET #home" do
        it "returns a success response" do
            User.create! valid_attributes
            get :home, params: {}, session: valid_session

            # Make sure to swap this as well
            expect(response).to be_successful # be_successful expects a HTTP Status code of 200
            # expect(response).to have_http_status(302) # Expects a HTTP Status code of 302
        end
    end
end