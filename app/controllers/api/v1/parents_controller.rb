class Api::V1::ParentsController < ApplicationController

  def index
    @parents = Parent.all
    render json: @parents
  end
end
