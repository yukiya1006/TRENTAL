class MapSearchesController < ApplicationController
  def index
    @map = Map.new
    @maps = Map.all
    @user = current_user
  end
end
