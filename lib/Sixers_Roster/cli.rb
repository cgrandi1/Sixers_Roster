#Our CLI Controller

class CLI

  attr_accessor :player

  def call
    welcome
    show_players
    select_player  #get the player from the Player.all array and set it = player
    #show_player_bio #once you set your player just puts the player attributes
    #menu   #this is the hard part
    #goodbye
  end

  def welcome
    puts "Here is the 76ers roster"
  end

  def show_players
    Scraper.scrape_page #creating the players
    Player.all.each.with_index(1) do |player, i|
      puts "#{i}. #{player.name}"
    end
  end

  def select_player
    puts "\n What player do you want to select (choose by number)?"
    max_value = Player.all.length
    input = gets.strip.to_i
    if input.between?(1,max_value)
      #valid input
    else
      puts "Invalid input"
      select_player
    end
  end


  def show_player_bio
    #TODO
  end

  def menu

  end

end
