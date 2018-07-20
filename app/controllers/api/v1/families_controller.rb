class Api::V1::FamiliesController < ApplicationController

  def index
    @Families = Family.all
    render json: @Families
  end
end
