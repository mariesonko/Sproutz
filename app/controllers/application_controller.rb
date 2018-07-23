class ApplicationController < ActionController::API

    before_action :authorized

      def issue_token(payload)
        JWT.encode(payload, ENV['secret'], 'HS256')
      # should be in another file that is .gitignore'd, use a gem like 'figaro' to manage
      end

      def current_parent
        @parent ||= Parent.find_by(id: parent_id)
      end

      def parent_id
        decoded_token.first['id']
      end

      def decoded_token
        begin
        JWT.decode(request.headers['Authorization'], ENV['secret'], true, { :algorithm => 'HS256' })
        rescue JWT::DecodeError
          [{}]
        end
      end

      def authorized
        render json: {message: "Not welcome" }, status: 401 unless logged_in?
      end

      def logged_in?
        !!current_parent
      end
end
