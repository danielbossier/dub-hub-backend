require "nokogiri"
require "httparty"
require "byebug"

def scraper
  url = "https://www.espn.com/mlb/standings"
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  al_teams = []
  nl_teams = []
  al_index = 5
  nl_index = 74
  al_wl_index = 0
  nl_wl_index = 165
  team_listings = parsed_page.css("div.tabs__content")

  15.times do
    n_team = {
      name: team_listings.css("a.AnchorLink")[nl_index].text,
      wins: team_listings.css("span.stat-cell")[nl_wl_index].text,
      losses: team_listings.css("span.stat-cell")[nl_wl_index + 1].text,
    }
    a_team = {
      name: team_listings.css("a.AnchorLink")[al_index].text,
      wins: team_listings.css("span.stat-cell")[al_wl_index].text,
      losses: team_listings.css("span.stat-cell")[al_wl_index + 1].text,
    }
    al_teams << a_team
    al_index += 3
    nl_teams << n_team
    nl_index += 3
    al_wl_index += 11
    nl_wl_index += 11
  end
  byebug
end

scraper
