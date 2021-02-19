require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe "GET index" do
    context "when method GET index" do
      let!(:product) { create(:product) }

      it "returns a success response" do
        get :index
        # expect(response).to be_successful
        expect(response).to render_template("index")
      end
    end
    
    context "when method GET show" do
      let!(:product) { create(:product) }

      it "returns a success response" do
        get :show, params: { id: product.id }
        expect(response).to render_template("show")
      end
    end

    context "when method POST scrape" do
      it "returns a success response" do
        get :scrape
        expect(response).to have_http_status(:ok)
      end
    end
  end
end