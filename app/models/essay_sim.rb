class EssaySim < ActiveRecord::Base
  attr_accessible :graderEmail, :essay, :article1, :article2, :article3
  
  validates :graderEmail, presence: true
  validates :essay, presence: true
  validates :article1, presence: true
  validates :article2, presence: true
  validates :article3, presence: true
end
