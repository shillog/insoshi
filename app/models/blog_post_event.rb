# == Schema Information
# Schema version: 12
#
# Table name: events
#
#  id          :integer(11)     not null, primary key
#  person_id   :integer(11)     
#  instance_id :integer(11)     
#  type        :string(255)     
#  created_at  :datetime        
#  updated_at  :datetime        
#

class BlogPostEvent < Event
  belongs_to :post, :class_name => "BlogPost", :foreign_key => "instance_id"
end