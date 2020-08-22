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
     Beauty.all.each_with_index do |p|
      puts "#{p.name}"
     end
  end 
  
end