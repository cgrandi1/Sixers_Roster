class Scraper

  PAGE_URL = "https://www.nba.com/sixers/roster/"

  def self.scrape_page
    file = open(PAGE_URL)
    doc = Nokogiri::HTML(file)

    doc.css(".roster__player").each do |player|
      name = player.css(".roster__player__header__heading").text
      new_player = Player.new(name)
      new_player.position = player.css(".roster__player__header_position").text.strip
      new_player.number = player.css(".roster__player__header_jnumber").text.to_i
      new_player.height = player.css(".roster__player__info__bio dd")[0].text
      new_player.weight = player.css(".roster__player__info__bio dd")[1].text
      new_player.dob = player.css(".roster__player__info__bio dd")[2].text
      new_player.prior_nba = player.css(".roster__player__info__bio dd")[3].text
      new_player.country = player.css(".roster__player__info__bio dd")[4].text
      new_player.years_pro = player.css(".roster__player__info__bio dd")[5].text.to_i
    end

  end
end

end
