require "nokogiri"
require "httparty"
require "byebug"

def scraper
  url = "https://www.espn.com/nba/standings"
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  ec_teams = []
  wc_teams = []
  ec_index = 5
  wc_index = 58
  ec_wl_index = 0
  wc_wl_index = 195
  team_listings = parsed_page.css("div.tabs__content")

  15.times do
    ec_team = {
      name: team_listings.css("a.AnchorLink")[ec_index].text,
      wins: team_listings.css("span.stat-cell")[ec_wl_index].text,
      losses: team_listings.css("span.stat-cell")[ec_wl_index + 1].text,
    }
    wc_team = {
      name: team_listings.css("a.AnchorLink")[wc_index].text,
      wins: team_listings.css("span.stat-cell")[wc_wl_index].text,
      losses: team_listings.css("span.stat-cell")[wc_wl_index + 1].text,
    }
    ec_teams << ec_team
    ec_index += 3
    wc_teams << wc_team
    wc_index += 3
    ec_wl_index += 13
    wc_wl_index += 13
  end
end

scraper
