require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  describe "GET #_form" do
    it "returns http success" do
      get :_form
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #_item" do
    it "returns http success" do
      get :_item
      expect(response).to have_http_status(:success)
    end
  end

end
