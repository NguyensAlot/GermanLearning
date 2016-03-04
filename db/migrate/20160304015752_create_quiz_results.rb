class CreateQuizResults < ActiveRecord::Migration
  def change
    create_table :quiz_results do |t|
      t.text :answers
      t.integer :answers_correct
      t.text :score
      t.references :article_questioning, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
