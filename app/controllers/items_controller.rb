class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @items = policy_scope(Item.where.not(latitude: nil, longitude: nil))

    @markers = @items.map do |item|
      {
        lat: item.latitude,
        lng: item.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { item: item }),
        image_url: helpers.asset_url('surf.png')
      }
    end
  end

  def show
    @item = Item.find(params[:id])
    @booking = Booking.new
    authorize @item
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
      redirect_to items_path, notice: 'Item has been created'
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:title, :photo, :price, :availability, :description, :address)
  end
end
