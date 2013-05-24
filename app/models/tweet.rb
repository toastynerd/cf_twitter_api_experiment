class Tweet < ActiveRecord::Base
  attr_accessible :body

  validates :body, :presence => true
  validates :body, :length => {:maximum => 140}
end
