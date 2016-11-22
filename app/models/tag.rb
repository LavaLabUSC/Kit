class Tag < ActiveRecord::Base
  has_many :tagging
  has_many :taggable, through: :tagging
end
