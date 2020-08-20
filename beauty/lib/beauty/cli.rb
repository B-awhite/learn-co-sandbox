class Cli 
  
  def start 
    puts "Do you love Fenty beauty?"
    puts "Enter product"
    input = gets.strip
    Api.get_beauty(input)
  end 
  
end 