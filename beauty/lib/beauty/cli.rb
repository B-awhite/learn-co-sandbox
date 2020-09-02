class Cli 
  
  def start 
    puts "Do you love Fenty Beauty?"
    puts "Enter a product, lipstick, eyeliner, foundation."
    product = gets.strip.downcase
    Api.get_beauty(product)
    Beauty.select_product(product)
    self.pricing
  end
  
  def pricing 
    puts "Type in the number of which product you'd like to get pricing on?"
    item = gets.strip.to_i
    beauty = Beauty.all[item-1]
     puts "$#{beauty.price}"
     self.whats_next
  end 
  
  def whats_next
    puts "Would you like to select another product?"
    item = gets.strip.downcase
    if item == "yes"
      Beauty.all.clear
      start
    elsif item == "no"
      puts "See you soon"
      exit
    else 
      puts "Invalid entry"
      self.whats_next
    end 
  end
end 