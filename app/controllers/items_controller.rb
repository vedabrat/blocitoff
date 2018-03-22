class ItemsController < ApplicationController

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      flash[:notice] = "List has been updated"
    else
      flash[:alert] = "Error saving"
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def destroy
      @item = Item.find(params[:id])
      if @item.destroy
          flash[:notice] = "\"#{@item.name}\" was deleted successfully."
      else
          flash.now[:alert] = "There was an error deleting the post."
      end

      respond_to do |format|
          format.html
          format.js
      end
  end


private

  def item_params
    params.require(:item).permit(:name)
  end

end
