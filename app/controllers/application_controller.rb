class ApplicationController < ActionController::API

    def issue_token(parent)
      JWT.encode({parent_id: parent.id}, ENV['secret_key'], 'HS256')
    end

    def current_parent
      @parent ||= Parent.find_by(id: parent_id)
    end

    def token
      request.headers['Authorization']
    end

    def decoded_token
      begin
        # [{parent_id: 1}, {algo: 'hs256'}]
        JWT.decode(token, ENV['secret_key'], true, { :algorithm => 'HS256' })
      rescue JWT::DecodeError
        [{}]
      end
    end

    def parent_id
      decoded_token.first['parent_id']
    end

    def logged_in?
      !!current_parent
    end
end
