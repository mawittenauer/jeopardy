class Answer < ActiveRecord::Base  
  validates_presence_of :content
  belongs_to :category
end
