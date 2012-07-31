class Relationship < ActiveRecord::Base
  attr_accessible :requested_id, :requester_id

    belongs_to :requester, :foreign_key => "requester_id", :class_name => "User"
    belongs_to :requested, :foreign_key => "requested_id", :class_name => "User"


    validates :requester_id, presence: true
    #validates :requested_id, presence: true
end
