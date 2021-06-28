class MyToysController < ApplicationController

  def index
  
  end

  def new
  end

  def show
    @toy = MyToy.find(params[:id])
    @users = User.all
    @back_url = session[:my_previous_url]
  end
end
