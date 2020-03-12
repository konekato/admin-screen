class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.save
    redirect_to '/users'
  end
end
