class UsersController < ApplicationController
  def react_root
  end

  def show
    @user = current_user
  end

end
