class Question < ActiveRecord::Base
  has_many :answer
  has_many :vote, as: :votable
end
