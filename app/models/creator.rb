class Creator < ActiveRecord::Base
  has_many :tags, through: :tagging, as: :taggable
  has_many :videos
end
