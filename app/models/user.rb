class User < ActiveRecord::Base
  has_many :subscription
  has_many :creators, through: :subscription

  has_many :tagging, as: :taggable
  has_many :tags, through: :tagging
  
  has_secure_password
end
