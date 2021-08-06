require "nokogiri"
require "httparty"
require "byebug"

def scraper
  url = "https://www.espn.com/nfl/standings"
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  afc_teams = []
  nfc_teams = []
  afc_index = 2
  nfc_index = 82
  afc_wl_index = 0
  nfc_wl_index = 165
  team_listings = parsed_page.css("section")

  16.times do
    afc_team = {
      name: team_listings.css("a.AnchorLink")[afc_index].text,
      wins: team_listings.css("span.stat-cell")[afc_wl_index].text,
      losses: team_listings.css("span.stat-cell")[afc_wl_index + 1].text,
    }
    nfc_team = {
      name: team_listings.css("a.AnchorLink")[nfc_index].text,
      wins: team_listings.css("span.stat-cell")[nfc_wl_index].text,
      losses: team_listings.css("span.stat-cell")[nfc_wl_index + 1].text,
    }
    afc_teams << afc_team
    afc_index += 3
    nfc_teams << nfc_team
    nfc_index += 3
    afc_wl_index += 12
    nfc_wl_index += 12
  end
end

scraper
