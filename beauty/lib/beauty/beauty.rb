class Beauty 
  
  @@all = []
  
  attr_accessor :name, :price
  
  def initialize(name, price)
    @name = name 
    @price = price
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.select_product(product)
     Beauty.all.each.with_index(1) do |p, index|
      puts "#{index} #{p.name}"
     end
  end 

  def self.select_pricing(item)
     Beauty.all.each.with_index(1) do |p, index|
      puts "#{index} #{p.name}, $#{p.price}"
     end
   end
  
end