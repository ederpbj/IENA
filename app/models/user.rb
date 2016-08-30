class User < ApplicationRecord
  has_secure_password

  validates name, presence: true, length: {maximum: 50}

  before_save { self.name = name.downcase }
end
