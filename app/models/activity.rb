# == Schema Information
#
# Table name: activities
#
#  id         :integer          not null, primary key
#  call       :string(255)
#  grid       :string(255)
#  start_date :date
#  end_date   :date
#  home_url   :string(255)
#  image_url  :string(255)
#  more_info  :string(255)
#  created_at :datetime
#  updated_at :datetime
#  qsl_info   :string(255)
#

class Activity < ActiveRecord::Base
end
