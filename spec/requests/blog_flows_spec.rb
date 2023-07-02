require 'rails_helper'

RSpec.describe "BlogFlows", type: :request do
  describe "GET /blog_flows" do
    it "works! (now write some real specs)" do
      get accounts_login_path
      # expect(response).to have_http_status(200)
      assert_select "h1", "Login"
      

    end
  end
end
