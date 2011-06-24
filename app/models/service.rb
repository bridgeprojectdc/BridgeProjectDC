class Service < ActiveRecord::Base
  has_many :service_service_types

  has_many :service_types, :through => :service_service_types

  has_many :service_followers
  has_many :followers, :through => :service_followers, :source => :user

  has_many :service_managers
  has_many :managers, :through => :service_managers, :source => :user

  searchable do
    text :site_name, :default_boost => 3
    text :service_types do
      service_types.map {|t| t.title }
    end
    text :state
    text :address
    text :zip
    text :transportation
    text :description
    text :restrictions
    text :website
  end
  after_save :reindex
  # Possibly will be slow inline... probably need to set some more specifics grained settings
  # http://outoftime.github.com/sunspot/docs/
  # or set this to be in a resque job
  def reindex
    Sunspot.index!
    # puts 'reindexed'
  end

  def subscribed?(user)
    
  end
end


# == Schema Information
#
# Table name: services
#
#  id             :integer         not null, primary key
#  site_name      :string(255)
#  address        :string(255)
#  city           :string(255)
#  state          :string(255)
#  zip            :string(255)
#  phone          :string(255)
#  hours          :string(255)
#  transportation :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  website        :string(255)
#  restrictions   :string(255)
#  latitude       :decimal(, )
#  longitude      :decimal(, )
#  description    :text
#  active         :boolean         default(FALSE)
#  void           :boolean         default(FALSE)
#  internal_notes :text
#

