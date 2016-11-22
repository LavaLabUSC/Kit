class Video < ActiveRecord::Base
  has_many :tags, through: :tagging, as: :taggable
  has_many :products
  belongs_to :creator
end
