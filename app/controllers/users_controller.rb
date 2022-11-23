class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    User.create(name: params[:user][:name])
    redirect_to users_path
  end
end
