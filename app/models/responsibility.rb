class Responsibility < ActiveRecord::Base
  belongs_to :user
  belongs_to :service
end

# == Schema Information
#
# Table name: responsibilities
#
#  id         :integer         not null, primary key
#  role       :string(255)
#  active     :boolean
#  user_id    :integer
#  service_id :integer
#  created_at :datetime
#  updated_at :datetime
#

