class Creator < ActiveRecord::Base
  has_many :tagging, as: :taggable
  has_many :tags, through: :tagging

  has_many :subscription
  has_many :users, through: :subscription

  has_many :videos
end
