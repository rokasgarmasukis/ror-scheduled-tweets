class MainController < ApplicationController
  def index
    if session[:user_id]
      # find throws an error, find_by doesn't
      @user = User.find_by(id: session[:user_id])
    end
  end
end
