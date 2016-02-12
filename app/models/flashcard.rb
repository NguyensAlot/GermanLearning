class Flashcard < ActiveRecord::Base
  validates_presence_of :set_name, :word, :definition
  validates_length_of :set_name, :minimum > 0
  validates_length_of :word, :minimum > 0
  validates_length_of :definition, :minimum > 0
end
