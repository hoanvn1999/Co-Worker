require 'rails_helper'

RSpec.describe "Bookings", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/booking/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/booking/create"
      expect(response).to have_http_status(:success)
    end
  end

end
