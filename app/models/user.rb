class User < ActiveRecord::Base
  #validates :call, presence: true, uniqueness: true
  has_secure_password
end
