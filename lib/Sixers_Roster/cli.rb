#Our CLI Controller

class CLI

  attr_accessor :player

  def call
    welcome
    show_players
    select_player
    #menu
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
    input = ""
    while input != "exit"
    puts "\n What player do you want to select (choose by number)?"
    max_value = Player.all.length
    input = gets.strip
    if input.to_i.between?(1,max_value)
      person = Player.all[input.to_i - 1]
      show_player_bio(person)
    else
      "Invalid"
      show_players
    end
  end
end


  def show_player_bio(person)
    puts "He is from #{person.country} - He was born on #{person.dob} - He is #{person.weight} - He is #{person.height} - He played at #{person.prior_nba}"
    puts "Would you like to select another player?: yes or exit"
    input = gets.strip
      if input == "yes"
        select_player
      elsif input == "exit"
        "Goodbye"
      else
        "Invalid"
      end
    end

  def menu

  end

end

