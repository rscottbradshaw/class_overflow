class Question < ActiveRecord::Base
  validates :title, :content, presence: true
  has_many :answers
end
