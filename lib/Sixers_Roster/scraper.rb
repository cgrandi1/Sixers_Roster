class Scraper

  def scrape_page
    open = html("https://www.nba.com/sixers/roster/")
    doc = Nokogiri::HTML(open("html"))
    doc.css("div.pane-content").each do |player|


      players = roster.css(".roster__player__header__heading").text
      position = roster.css(".roster__player__header_position").text
      number = roster.css(".roster__player__header_jnumber").text.to_i
      bio = roster.css(".roster__player__info__bio").text

      Player.new(name, bio)

    binding.pry
  end


end
