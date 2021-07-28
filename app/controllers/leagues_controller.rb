class LeaguesController < ApplicationController
  def index
    leagues = League.all
    render json: leagues.as_json
  end
end
