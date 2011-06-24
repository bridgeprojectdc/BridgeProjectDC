class ServiceServiceType < ActiveRecord::Base
  belongs_to :service
  belongs_to :service_type
  # has_and_belongs_to_many
end

# == Schema Information
#
# Table name: service_service_types
#
#  id              :integer         not null, primary key
#  service_id      :integer
#  service_type_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#

