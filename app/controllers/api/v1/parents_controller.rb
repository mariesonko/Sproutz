class Api::V1::ParentsController < ApplicationController

  before_action :find_parent, only: [:show, :update, :destroy]

      def index
        @parents = Parent.all
        render json: @parents, status: 200
      end

      def create
        parent = Parent.create(parent_params)
        render json: parent, status: 201
      end

      def show
        render json: @parents, status: 200
      end

      def update
        @parents.update(parent_params)
        render json: @parents, status: 200
      end

      def destroy
        parent_id = @parent.id
        @parent.destroy
        render json: {message: "Parent not deleted", parent_id: parent_id}
      end


    private
      def parent_params
        params.permit(:family_id, :firstName, :lastName, :cellPhone, :dateOfBirth, :gender, :address, :city, :state, :zipCode, :country, :email, :password)
      end

      def find_parent
        @parents = Parent.find(params[:id])
      end
end
