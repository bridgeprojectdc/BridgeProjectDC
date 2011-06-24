class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :first_name, :last_name
  has_many :service_managers
  has_many :managed_services, :through => :service_managers, :source => :service

  has_many :service_followers
  has_many :services, :through => :service_followers, :source => :service

  def subscribe_to(service_id)
    ServiceFollower.find_or_create_by_user_id_and_service_id(self.id, service_id)
  end

  def subscribed_to?(service)
    services.include?(service)
  end

  def manage_service(service_id)
    ServiceManager.find_or_create_by_user_id_and_service_id(self.id, service_id)
  end
end


# == Schema Information
#
# Table name: users
#
#  id                     :integer         not null, primary key
#  first_name             :string(255)
#  last_name              :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(128)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer         default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#

