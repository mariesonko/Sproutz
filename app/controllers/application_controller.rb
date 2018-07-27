class ApplicationController < ActionController::API

    def issue_token(family)
      JWT.encode({family_id: family.id}, ENV['secret_key'], 'HS256')
    end

    def current_family
      @family ||= Family.find_by(id: family_id)
    end

    def token
      request.headers['Authorization']
    end

    def decoded_token
      begin
        # [{family_id: 1}, {algo: 'hs256'}]
        JWT.decode(token, ENV['secret_key'], true, { :algorithm => 'HS256' })
      rescue JWT::DecodeError
        [{}]
      end
    end

    def family_id
      decoded_token.first['family_id']
    end

    def logged_in?
      !!current_family
    end
end
