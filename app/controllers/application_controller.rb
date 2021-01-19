class ApplicationController < ActionController::API
    def encode_token(payload)
        JWT.encode(payload, 'D4_53CREtyO')
    end
end
