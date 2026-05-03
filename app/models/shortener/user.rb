module Shortener
  class User < ApplicationRecord
    self.table_name = 'shortener_users'

    has_secure_password

    normalizes :email, with: ->(e) { e.strip.downcase }

    validates :email, presence: true, uniqueness: true

    generates_token_for :session, expires_in: 1.day
  end
end
