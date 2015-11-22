class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @investments = @user.investments
  end
end