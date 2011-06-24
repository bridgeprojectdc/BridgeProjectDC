class ServiceManager < ActiveRecord::Base
  belongs_to :user
  belongs_to :service
end

# == Schema Information
#
# Table name: service_managers
#
#  id         :integer         not null, primary key
#  service_id :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

