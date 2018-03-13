class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to users_show_path(current_user)
    end
  end

  def about
  end
end
