class EssaySim < ActiveRecord::Base
  attr_accessible :grader_email, :essay, :article1, :article2, :article3
  
  validates :grader_email, presence: true
  validates :essay, presence: true, length: { minimum: 2000 }
  validates :article1, presence: true
  validates :article2, presence: true
  validates :article3, presence: true
end
