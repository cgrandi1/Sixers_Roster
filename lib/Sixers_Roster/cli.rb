#Our CLI Controller

class CLI

  attr_accessor :player

  def call
    welcome
    show_players
    #select_player  #get the player from the Player.all array and set it = player
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
    #TODO
  end

  def show_player_bio
    #TODO
  end

  def menu
    puts "Select a player"
    Players.all.each.with_index(1) do |player, index|
      puts "#{index} ,#{players.name}, #{players.position}, #{players.number}"
      input = gets.chomp
      puts input
      case input
        when "#{players.name}"
          url = "https://www.nba.com/sixers/roster/"
          categories = Scraper.scrape_page(url)
      end
    end
  end

end
