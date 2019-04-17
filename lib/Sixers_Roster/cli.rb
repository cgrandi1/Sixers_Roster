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
    puts "What player do you want to select?"
    input = gets.chomp.downcase
    Scraper.scrape_page 
    case input
    when Player.all.each do |player|
      puts input == player.name
      end
    end
  end


  def show_player_bio
    #TODO
  end

  def menu

  end

end
