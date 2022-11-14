class GroupsController < ApplicationController
  def index
    @user = current_user
    @groups = @user.groups
  end

  def new
    @group = Group.new
  end

  def create; end
end
