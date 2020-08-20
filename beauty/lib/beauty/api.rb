class Api 
  
  def self.get_beauty(product)
    url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=fenty"
    response = HTTParty.get(url)
    binding.pry 
  end
  
end 

