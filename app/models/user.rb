# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  grid            :string(255)
#  state           :string(255)
#  zone            :integer
#  call_sign       :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  has_many :grids, dependent: :destroy

  validates :call_sign, presence: true, uniqueness: true
  has_secure_password

end
