class GroupsController < ApplicationController
  def index
    @groups = current_user.groups.includes(:entities).all
  end

  def new
    @group = Group.new
  end

  def create
    @group = current_user.groups.new(group_params)
    if @group.save
      redirect_to groups_path(current_user.id)
    else 
      render :new
    end
  end

  def show
    @group = Group.find(params[:id])
    @entities = @group.entities
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon, :icon_cache)
  end
end