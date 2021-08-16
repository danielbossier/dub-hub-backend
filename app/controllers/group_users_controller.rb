class GroupUsersController < ApplicationController
  def index
    group_users = Group_user.all
    render json: group_users
  end

  def create
    group_user = Group_user.new(
      user_id: current_user.id,
      group_id: params[:group_id],
    )
    if group_user.save
      render json: group_user
    else
      render json: { errors: group_user.errors.full_messages }, status: 422
    end
  end
end
