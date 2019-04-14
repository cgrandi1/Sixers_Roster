#Our CLI Controller

class CLI

  def call
    puts "Here is the 76ers roster"
    Sraper.new.scrape_page
  end

  def menu
    Player.all.each.with_index(1) do |player, index|
      puts "#{index} ,#{players.name}, #{players.bio}"
    end
  end


end
