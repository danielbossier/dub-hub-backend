class TeamUsersController < ApplicationController
  def index
    team_users = TeamUsers.all
    render json: team_users
  end

  def create
    team_users = TeamUsers.new(
    user_id: current_user.id,
    team_id: params[:team_id]
    )
    if team_users.save
      render json: team_users
    else
      render json: {errors: team_users.errors.full_messages}, status: 422
  end
end

