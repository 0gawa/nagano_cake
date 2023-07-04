class Admin::ManagersController < ApplicationController
  def new
  end

  def index
    @items = Item.all
  
  end

  def create
  end
end
