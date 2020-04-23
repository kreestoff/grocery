class UsersController < ApplicationController
  def react_root
  end

  def show
    @user = User.find(params['id'])
  end

end
