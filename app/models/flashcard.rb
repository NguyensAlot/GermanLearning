class Flashcard < ActiveRecord::Base
  # whitelist attributes in DB to be mass-assigned
  attr_accessible :set_name, :word, :definition
  
  validates :set_name, presence: true, uniqueness: true
  validates :word, presence: true
  validates :definition, presence: true
end
