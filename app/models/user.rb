class User < ActiveRecord::Base
  has_many :grids, dependent: :destroy

  #validates :call, presence: true, uniqueness: true
  has_secure_password

end
