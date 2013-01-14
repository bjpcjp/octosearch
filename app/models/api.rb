class Api < ActiveRecord::Base
  attr_accessible :name, :query

  validates :name, :query, :presence => true
  
end
