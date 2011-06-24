require 'spec_helper'

describe User do
  it "should create and save subscriptions" do
    u = User.new :email => "c@d.com", :password => "123456"
    u.save.should be_true
    s = Service.create :site_name => "Awesome Service"
    u.subscribe_to(s.id)
    u.reload
    u.services.should include(s)
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

