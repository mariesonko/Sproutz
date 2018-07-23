class Api::V1::AuthController < ApplicationController

  skip_before_action :authorized, only: [:create, :show]

    def create
      parent = Parent.find_by(email: params[:email])

      if parent && parent.authenticate(params[:password])
        render json: {email: parent.email, id: parent.id, token: issue_token({id: parent.id})}
      else
        render({json: {error: 'Parent is invalid'}, status: 401})
      end
    end

    def show
      if current_parent
        render json: {
          id: current_parent.id,
          email: current_parent.email
        }
      else
        render json: {error: 'Invalid token'}, status: 401
      end
    end
end
