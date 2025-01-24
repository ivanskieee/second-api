class User < ApplicationRecord
  has_secure_password

  def as_json()
  end
end
