require 'spec_helper'

describe SessionsController do
  before :suite do
    OmniAuth.config.test_mode = true
  end

  describe "create action" do
    context "new user" do
      before :each do
        OmniAuth.config.mock_auth[:foursquare] = OmniAuth::AuthHash.new {
          :provider => 'foursquare',
          :uid => '123545',
          :extra => {
            :raw_info => {
              :firstName => 
            }
          }
        }
      end
    end
  end
end
