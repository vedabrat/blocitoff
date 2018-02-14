class WelcomeController < ApplicationController
before_action :authenticate_user!
  def index
  end

  def howto
  end

  def about
  end

  def contact
  end
end
