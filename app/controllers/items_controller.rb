class ItemsController < ApplicationController
  before_action :authorize
  
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
     
      redirect_to root_path
    else
      redirect_to action: 'new'
    end
  end
  
  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
      if @item.update(item_params)
        redirect_to root_path
      else
        render 'edit'
      end
  end
  

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to root_path
    end
  end

  
  private 
  def item_params
    params.require(:item).permit(:name, :price, :quantity)
  end
end
