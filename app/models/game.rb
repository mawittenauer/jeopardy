class Game < ActiveRecord::Base
  validates_presence_of :name
  has_many :categories
  belongs_to :user
  
  def complete?
    sum = 0
    categories.each { |category| sum += category.answers.count }
    sum == 30
  end
end
