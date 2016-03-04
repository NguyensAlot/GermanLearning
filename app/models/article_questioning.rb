class ArticleQuestioning < ActiveRecord::Base
  attr_accessible :quiz_results_attributes
  has_many :quiz_results
  accepts_nested_attributes_for :quiz_results  
end
