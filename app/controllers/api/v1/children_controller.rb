class Api::V1::ChildrenController < ApplicationController

    before_action :find_child, only: [:show, :update, :destroy]

    def index
      @children = Child.all
      render json: @children, status: 200
    end

    def create
      child = Child.create(child_params)
      render json: child, status: 201
    end

    def show
      render json: @children, status: 200
    end

    def update
      @children.update(child_params)
      render json: @children, status: 200
    end

    def destroy
      child_id = @child.id
      @child.destroy
      render json: {message: "Child not deleted", child_id: child_id}
    end

  private
    def child_params
      params.require(:child).permit(:family_id, :childFirstName, :childLastName, :childGender, :childDateOfBirth, :medicalConditions)
    end

    def find_child
      @children = Child.find(params[:id])
    end

end
