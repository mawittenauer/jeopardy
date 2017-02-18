class Answer < ActiveRecord::Base
  validates_presence_of :content, :points
  belongs_to :category
end
