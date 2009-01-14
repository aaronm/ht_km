class Abstract < ActiveRecord::Base
  belongs_to :created_by,
              :class_name => "User",
              :foreign_key => "user_id"
            
  validates_presence_of :created_by
  attr_protected :created_by
  
  
  
  def to_label
    "#{headline}"
  end
end
