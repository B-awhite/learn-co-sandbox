class Cli 
  
  def start 
    puts "Do you love Fenty Beauty?"
    puts "Enter a product, lipstick, eyeliner, foundation."
    product = gets.strip.downcase
    Api.get_beauty(product)
    Beauty.select_product(product)
    self.pricing
  end
  
  # def price_option
  #   puts "Would you like to get pricing"
  #   input = gets.strip.downcase
  #   if input == "yes" 
  #     pricing  
  #   elsif input == "no"   
  #     puts "Have a good day"
  #   else
  #     self.price_option
  #   end 
  # end 
  
  def pricing 
    puts "Would you like to see prices?"
    item = gets.strip.downcase
    if item == "yes"
      Beauty.select_pricing(item)
    elsif item == "no"
      puts "See you soon"
    else 
      puts "Invalid entry"
      self.pricing
    end 
  end 
  
end 