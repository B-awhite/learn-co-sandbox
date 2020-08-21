class Api 
  
  def self.get_beauty(brand)
    url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=#{brand}"
    response = HTTParty.get(url)
    binding.pry
  end
  
end 

