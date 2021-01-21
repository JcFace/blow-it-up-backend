class ApplicationController < ActionController::API

    def encode_token(payload)
        JWT.encode(payload, 'D4_53CREtyO')
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 'D4_53CREtyO')
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_user
        if decoded_token
            user_id = decoded_token[0]['user_id']
            current_user = User.find(user_id)
        end
    end

    def logged_in?
        !!current_user
    end

    def authorized
        unless logged_in?
            render json: {error: "You're not logged in Goof!"}, status: :unauthorized 
        end
    end
    
end
