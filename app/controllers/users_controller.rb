class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    User.create(name: params[:user][:name])
    redirect_to users_path
  end
end