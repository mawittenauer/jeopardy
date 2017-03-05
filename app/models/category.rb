class Category < ActiveRecord::Base
  validates_presence_of :name
  belongs_to :game
  has_many :answers, :dependent => :delete_all
  validates :answers, :length => { :maximum => 5 }
  
  def complete?
    answers.count == 5
  end
end
