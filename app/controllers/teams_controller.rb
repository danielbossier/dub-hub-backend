class TeamsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show, :display]

  def display
    url = "https://www.espn.com/mlb/standings"
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    al_teams = []
    nl_teams = []
    mlb_teams = []
    al_index = 5
    nl_index = 74
    al_wl_index = 0
    nl_wl_index = 180          # needs to be toggled between 165 and 180 when table changes
    al_team_index = 1
    nl_team_index = 16
    team_listings = parsed_page.css("div.tabs__content")

    15.times do
      a_team = {
        name: team_listings.css("a.AnchorLink")[al_index].text,
        wins: team_listings.css("span.stat-cell")[al_wl_index].text,
        losses: team_listings.css("span.stat-cell")[al_wl_index + 1].text,
      }

      teams = Team.all
      team = teams.find(al_team_index)
      team.name = a_team[:name] || team.name
      team.wins = a_team[:wins] || team.wins
      team.losses = a_team[:losses] || team.losses
      team.save
      al_teams << a_team
      al_index += 3
      al_wl_index += 12               # With Playoff Odds = 12, without = 11
      al_team_index += 1
    end

    15.times do
      n_team = {
        name: team_listings.css("a.AnchorLink")[nl_index].text,
        wins: team_listings.css("span.stat-cell")[nl_wl_index].text,
        losses: team_listings.css("span.stat-cell")[nl_wl_index + 1].text,
      }
      teams = Team.all
      team = teams.find(nl_team_index)
      team.name = n_team[:name] || team.name
      team.wins = n_team[:wins] || team.wins
      team.losses = n_team[:losses] || team.losses
      team.save
      nl_teams << n_team
      nl_index += 3
      nl_wl_index += 12                # With Playoff Odds = 12, without = 11
      nl_team_index += 1
    end
    mlb_teams << al_teams
    mlb_teams << nl_teams
    render json: mlb_teams
    # if team.save
    #   render json: mlb_teams
    # else
    #   render json: { errors: team.errors.full_messages }, status: 422
    # end
  end

  def index
    teams = Team.all
    render json: teams
  end

  def create
    team = Team.new(
      name: params[:name],
      wins: params[:wins],
      losses: params[:losses],
      ties: params[:ties],
      conference: params[:conference],
      division: params[:division],
      league_id: params[:league_id],
      user_id: current_user.id,
    )
    team.save
    render json: team.as_json
  end

  def show
    team = Team.find_by(id: params[:id])
    render json: team.as_json
  end

  def update
    team = Team.find_by(id: params[:id])
    team.name = params[:name] || team.name
    team.wins = params[:wins] || team.wins
    team.losses = params[:losses] || team.losses
    team.ties = params[:ties] || team.ties
    team.conference = params[:conference] || team.conference
    team.division = params[:division] || team.division
    team.league_id = params[:league_id] || team.league_id

    if team.save
      render json: team
    else
      render json: { errors: team.errors.full_messages }, status: 422
    end
  end

  def destroy
    team = Team.find_by(id: params[:id])
    team.destroy
    render json: { message: "Team successfully destroyed." }
  end
end
