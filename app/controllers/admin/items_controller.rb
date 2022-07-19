class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
    
  end

  def new
    @items = Item.new
  end

  def create
    items = Item.new(item_params)
    items.save
    redirect_to '/items'
  end

  def show
  end

  def edit
  end

  def update
  end
end

private

def item_params
  params.require(:item).permit()
end