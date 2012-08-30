class Genre < ActiveRecord::Base
  attr_accessible :name

  scope :newest, order('created_at DESC')

  validates_presence_of :name

end
