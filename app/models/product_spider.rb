class ProductSpider < Kimurai::Base
  @name = 'products_spider'
  @engine = :mechanize


  def self.process(url)
    @start_urls = [url]
    self.crawl!
  end

  def parse(response, url:, data: {})
    response.xpath("//div[@class='column main']").each do |product|
      item = {}

      item[:name] = product.css('span.base')&.text&.squish
      # byebug
      item[:price] = product.css('div.product-info-price span.price')&.text&.squish&.to_s.tr('$', '').to_f
      item[:description] = product.css('div.value p')&.text&.squish
      item[:information] = product.css('div.additional-attributes-wrapper tr')&.text&.squish

      Product.where(item).create
    end
  end
end