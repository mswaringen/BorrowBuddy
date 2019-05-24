class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:search].present?
      sql_query = "address ILIKE :query"
      @items = policy_scope(Item.where(sql_query, query: "%#{params[:search]}%"))
    else
      @items = policy_scope(Item.where.not(latitude: nil, longitude: nil))
    end

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

  def edit
    @item = Item.find(params[:id])
    authorize @item
  end

  def update
    @item = Item.find(params[:id])
    authorize @item
    if @item.update(item_params)
    redirect_to item_path(@item), notice: 'Item has been edited'
  else
    render :edit
  end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    authorize @item
    redirect_to items_path, notice: 'Item has been deleted'
  end

  private

  def item_params
    params.require(:item).permit(:title, :photo, :price, :availability, :description, :address)
  end
end
