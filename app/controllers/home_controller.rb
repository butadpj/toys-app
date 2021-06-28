class HomeController < ApplicationController
  def index
    @all_toys = MyToy.all
    @users = User.all
  end
end
