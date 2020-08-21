class Beauty 
  
  @@all = []
  
  attr_accessor :product_type, :product_color
  
  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end