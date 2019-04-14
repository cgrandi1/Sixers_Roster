class Players
  attr_accessor :name, :bio


  @@all = []

  def initialize(name, bio)
    @name = name
    @bio = bio

    @@all << self
  end

  def self.all
    @@all
  end

  
end
