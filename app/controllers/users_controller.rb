class UsersController < ApplicationController
  before_action :move_to_new_user_session_path, except:[:show]

  def show
    @user = User.find(params[:id])
  end
end
