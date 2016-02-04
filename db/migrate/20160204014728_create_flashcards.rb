class CreateFlashcards < ActiveRecord::Migration
  def change
    create_table :flashcards do |t|
      t.text :word
      t.text :definition
      t.string :set_name
      t.boolean :bookmarked

      t.timestamps null: false
    end
  end
end
