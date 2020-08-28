class Cli 
  
  def start 
    puts "Do you love Fenty Beauty?"
    puts "Enter a product, lipstick, eyeliner, foundation."
    product = gets.strip.downcase
    Api.get_beauty(product)
    Beauty.select_product(product)
    self.price_option
  end
  
  def price_option
    puts "Would you like to get pricing"
    input = gets.strip.downcase
    if input == "yes" 
      pricing  
    elsif input == "no"   
      puts "Have a good day"
    else
      self.price_option
    end 
  end 
  
  def pricing 
    puts "Select item"
    item = gets.strip.downcase
    if item == "1"
      Beauty.select_pricing
    elsif item == "2"
      Beauty.select_pricing
    else 
      puts "Invalid entry"
      self.pricing
    end 
  end 
  
end 