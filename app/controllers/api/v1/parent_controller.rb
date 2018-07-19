class Api::V1::ParentController < ApplicationController

  def index
    @parents = Parent.all
    render json: @parents
  end
end
