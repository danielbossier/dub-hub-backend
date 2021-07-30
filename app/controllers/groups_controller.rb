class GroupsController < ApplicationController
  def index
    groups = Group.all
    render json: groups.as_json
  end

  def show
    group = Group.find_by(id: params[:id])
    render json: group.as_json
  end
end
