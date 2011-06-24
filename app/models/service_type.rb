#TODO: Everything
class ServiceType < ActiveRecord::Base
  has_many :service_service_types
  has_many :services, :through => :service_service_types
end

# == Schema Information
#
# Table name: service_types
#
#  id                      :integer         not null, primary key
#  title                   :string(255)
#  service_service_type_id :integer
#  created_at              :datetime
#  updated_at              :datetime
#

