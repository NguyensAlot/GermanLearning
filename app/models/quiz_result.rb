class QuizResult < ActiveRecord::Base
  attr_accessible :answers, :answers_correct, :score, :article_questioning_id, :user_id
  belongs_to :article_questioning
  belongs_to :user
end
