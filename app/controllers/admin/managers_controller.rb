class ManagersController < ApplicationController
  def new
  end

  def index
    @managers = Admin.all
  
  end

  def create
  end
end
