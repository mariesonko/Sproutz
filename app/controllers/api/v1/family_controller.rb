class Api::V1::FamilyController < ApplicationController

  def index
    @Families = Family.all
    render json: @Families
  end
end
