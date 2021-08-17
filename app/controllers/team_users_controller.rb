class TeamUsersController < ApplicationController
  def index
    team_users = TeamUser.all
    render json: team_users
  end

  def create
    team_user = TeamUser.new(
      user_id: current_user.id,
      team_id: params[:team_id],
    )
    if team_user.save
      render json: team_user
    else
      render json: { errors: team_user.errors.full_messages }, status: 422
    end
  end
end
