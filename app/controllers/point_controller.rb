class PointController < ApplicationController

  def index
     @points = Point.all

     render json: @points
  end
end
