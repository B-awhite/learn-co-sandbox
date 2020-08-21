class Cli 
  
  def start 
    puts "Do you love Fenty Beauty?"
    puts "Enter a product"
    product = gets.strip
    Api.get_beauty(product)
    Beauty.all.each.with_index(1) do |p, index|
      puts "#{index} - #{p.name}"
    end
  end 
    
end 