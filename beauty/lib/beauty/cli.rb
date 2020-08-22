class Cli 
  
  def start 
    puts "Do you love Fenty Beauty?"
    puts "Enter a product"
    product = gets.strip.downcase
    Api.get_beauty(product)
    Beauty.select_product(product)
    self.price_option
  end
  
  def price_option
    puts "Would you like to get pricing"
    input = gets.strip.downcase
    if input == "yes" 
      Beauty.select_pricing 
    elsif input == "no"   
      puts "That's fine"
    else
      puts "Have a good day"
    end 
  end 
  
end 