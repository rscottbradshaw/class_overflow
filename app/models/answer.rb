class Answer < ActiveRecord::Base
  validates :response, :responder, presence: true
  belongs_to :question
end
