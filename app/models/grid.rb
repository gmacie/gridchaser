# == Schema Information
#
# Table name: grids
#
#  id          :integer          not null, primary key
#  status      :string(255)
#  band        :string(255)
#  mode        :string(255)
#  call        :string(255)
#  country     :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  qsl_info    :string(255)
#  grid_square :string(255)
#  user_id     :string(255)
#

class Grid < ActiveRecord::Base
  belongs_to :user
end
