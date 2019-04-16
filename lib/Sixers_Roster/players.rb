class Player

  attr_accessor :name, :position, :number, :height, :weight, :dob, :prior_nba, :country, :years_pro


  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


end
