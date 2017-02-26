class Game < ActiveRecord::Base
  validates_presence_of :name
  has_many :categories
  belongs_to :user
  
  def complete?
    categories.all? { |category| category.complete? }
  end
  
  def percent_complete
    sum = 0
    categories.each do |category|
      sum += category.answers.count
    end
    ((sum / 30.00) * 100).to_s + "%"
  end
end
