class Game < ActiveRecord::Base
  validates_presence_of :name
  has_many :categories
end
