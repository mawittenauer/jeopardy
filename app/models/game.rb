class Game < ActiveRecord::Base
  validates_presence_of :name
  has_many :categories
  belongs_to :user
  
  def complete?
    categories.all? { |category| category.complete? }
  end
end
