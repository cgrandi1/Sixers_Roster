#Our CLI Controller

class SixersRoster::CLI

  def call
    puts "Here is the 76ers roster"
    Sraper.new.scrape_page
  end

  def menu
    puts "Select a player"
    Player.all.each.with_index(1) do |player, index|
      puts "#{index} ,#{players.name}, #{players.position}, #{players.number}"
      input = gets.chomp
      puts input
      case input
        when "#{players.name}"
          url = "https://www.nba.com/sixers/roster/"
          SixersRoster::Scraper.scrape_page(url)
    end
  end


end
