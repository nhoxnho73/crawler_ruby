require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'association product' do
    context "with test create table product" do
      let(:product) { create(:product) }
      it "is valid with valid attributes" do
        expect(product).to be_valid
      end
    end
    
  end


end  