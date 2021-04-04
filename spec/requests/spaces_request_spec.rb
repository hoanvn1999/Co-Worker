require 'rails_helper'

RSpec.describe "Spaces", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/spaces/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/spaces/show"
      expect(response).to have_http_status(:success)
    end
  end

end
