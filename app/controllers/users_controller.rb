class UsersController < ApplicationController
  def index
    @users = User.all.includes(:groups)
  end
end
