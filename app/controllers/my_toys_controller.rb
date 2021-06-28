class MyToysController < ApplicationController
  def index
  end

  def new
  end

  def show
    @toy = MyToy.find(params[:id])
  end
end
