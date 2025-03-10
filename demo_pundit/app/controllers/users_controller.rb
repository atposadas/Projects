class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    authorize @user
  end

  def destroy
    @user = User.find(params[:id])
    authorize @user
  end

  def deactivate
    @user = User.find(params[:id])
    authorize @user, :update?
    
    @user.deactivate!
    redirect_to @user
  end
end