class Product < ActiveRecord::Base
  has_many :tags, through: :tagging, as: :taggable
  belongs_to :video
end
