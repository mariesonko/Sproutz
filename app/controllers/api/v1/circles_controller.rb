class Api::V1::CirclesController < ApplicationController

    def index
      @circles = Circle.all
      render json: @circles
    end
end
