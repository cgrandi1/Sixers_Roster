class Scraper

  def scrape_page
    open = html("https://www.nba.com/sixers/roster/")
    doc = Nokogiri::HTML(open("html"))
    binding.pry
  end


end
