class WelcomeController < ApplicationController
before_action :authenticate_user!
  def index
    if user_signed_in?
      redirect_to users_show_path(current_user)
    end
  end

  def howto
  end

  def about
  end

  def contact
  end
end
