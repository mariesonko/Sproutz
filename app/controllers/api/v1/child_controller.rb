class Api::V1::ChildController < ApplicationController

  def index
    @children = Child.all
    render json: @children
  end
end
