class User < ApplicationRecord
    validates :username, :session_token
end
