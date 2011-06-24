require 'spec_helper'

describe Service do
  # pending "add some examples to (or delete) #{__FILE__}"
  context "When searching" do

    before do
      @service = Service.create :site_name => "Awesome Site"
      #make sure solr is reindexed....
      `rake sunspot:reindex`
    end
    after do
      @service.destroy
    end
    it "should be searchable" do
      Service.search do
        keywords "Awesome"
      end
    end
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

