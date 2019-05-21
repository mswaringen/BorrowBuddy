class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @items = policy_scope(Item).all
  end

  def new
    @item = Item.new
    authorize @item
  end

  def create
    @item = Item.new(item_params)
    authorize @item
    @item.owner = current_user

    if @item.save
      redirect_to root_path, notice: 'Item has been created'
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:title, :photo, :price, :availability)
  end
end

