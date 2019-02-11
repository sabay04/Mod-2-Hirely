class ItemsController < ApplicationController
  before_action :find_item, only: [:edit, :show, :update, :destroy]
  before_action :find_users, only: [:new, :edit, :create, :update]

  def index
    @items = Item.search(params[:search])
    # search items
  end

  def show
  end

  def new
    @item = Item.new

  end

  def create

    @item = Item.create(item_params)
    redirect_to @item
  end

  def edit
    # byebug
  end

  def update

    @item.update(item_params)
    redirect_to @item
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :user_id, :description, :catagory, :search)
  end

  def find_item
    @item = Item.find(params[:id])
  end

  def find_users
    @users = User.all
  end
end
