class ApplicationController < ActionController::API

    def secret_key
        Rails.application.credentials.secret_key
    end

    def encode(payload)
        JWT.encode(payload, secret_key, "HS256")
    end

    def decode(token)
        JWT.decode(token, secret_key, true, {algorith: "HS256"})[0]
    end

    def current_user
        # is there token
        # if there is token, current user = User.find
    end

end
