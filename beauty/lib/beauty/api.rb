class Api 
  #gets a list of items made by that brand
  def self.get_beauty(product)
    url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=fenty&product_type=#{product}"
    response = HTTParty.get(url)
    response.each do |p|
      name = p["name"]
      price = p["price"]
      Beauty.new(name, price)
    end
  end 
  
end 

