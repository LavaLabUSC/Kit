class Product < ActiveRecord::Base
  has_many :tagging, as: :taggable
  has_many :tags, through: :tagging
  belongs_to :video
end
