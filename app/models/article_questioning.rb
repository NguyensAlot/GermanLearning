class ArticleQuestioning < ActiveRecord::Base
  attr_accessible :quiz_results_attributes, :article, :questions, :answer_choices, :correct_answers, :num_of_questions, :num_of_answer_choices
  has_many :quiz_results
  accepts_nested_attributes_for :quiz_results  
end
