class Api 
  #gets a list of products made by Fenty
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

