class TeamsController < ApplicationController
  def index
    teams = Team.all
    render json: teams.as_json
  end

  def create
    team = Team.new(
      name: params[:name],
      wins: params[:wins],
      losses: params[:losses],
      ties: params[:ties],
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
    team.league_id = params[:league_id] || team.league_id
    team.save
    render json: team.as_json
  end

  def destroy
    team = Team.find_by(id: params[:id])
    team.destroy
    render json: { message: "Team successfully destroyed." }
  end
end
