class Category < ActiveRecord::Base
  validates_presence_of :name
  belongs_to :game
  has_many :answers
  validates :answers, :length => { :maximum => 5 }
end
