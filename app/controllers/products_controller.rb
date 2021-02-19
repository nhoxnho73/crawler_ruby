class ProductsController < ApplicationController
  
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def scrape
    url = 'https://magento-test.finology.com.my/marco-lightweight-active-hoodie.html'
    response = ProductSpider.process(url)
    if response[:status] = :conpleted && response[:error].nil?
      flash[:notice] = "Successfully scraped url"
    else
      flash[:alert] = response[:error]
    end

  rescue StandardError => e
    flash[:alert] = "Error: #{e}"

  end
end