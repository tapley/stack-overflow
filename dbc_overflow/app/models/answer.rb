class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :vote, as: :votable
end
