class Cli 
  
  def start 
    puts "Do you love make-up?"
    puts "Enter a brand"
    input = gets.strip
    Api.get_beauty(input)
  end 
  
end 