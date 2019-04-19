#Our CLI Controller

class CLI

  attr_accessor :player, :continue

  def initialize
    @continue = true
  end

  def call
    welcome
    while @continue
    show_players
    select_player
    show_player if @continue && @player != nil
    end
    goodbye
  end

  def welcome
    puts "Here is the 76ers roster"
  end

  def goodbye
    puts "Thanks for using my CLI"
  end

  def show_players
    Player.all.clear
    Scraper.scrape_page #creating the players
    Player.all.each.with_index(1) do |player, i|
      puts "#{i}. #{player.name}"
    end
  end

  def select_player
    input = ""
    puts "\n What player do you want to select (choose by number) or type 'exit'?"
    input = gets.chomp.strip
    if input == "exit"
      @continue = false
    elsif input.to_i.between?(1, Player.all.length)
      @player = Player.all[input.to_i - 1]
    else
      puts "Invalid"
    end
  end

  def show_player
    puts "#{@player.name}: He is from #{@player.country} - He was born on #{@player.dob} - He is #{@player.weight} - He is #{@player.height} - He played at #{@player.prior_nba}"
    puts "Would you like to select another player?: yes or exit"
    input = gets.strip
      if input == "yes"
        show_players
      elsif input == "exit"
        @continue = false
      else
        puts "Invalid"
        show_player
      end
    end
  end
