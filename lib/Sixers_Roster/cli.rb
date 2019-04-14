#Our CLI Controller

class CLI

  def call
    puts "Here is the 76ers roster"
  end

  def menu
    Player.all.each.with_index(1) do |player, index|
      puts "#{index} ,#{players.name}, #{players.bio}q"


end
