class UsersController < ApplicationController

  def show
    @item = Item.new
    @item.user = current_user
    @items = Item.where(user_id: current_user.id)
    
  end

end
