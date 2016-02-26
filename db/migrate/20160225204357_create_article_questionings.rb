class CreateArticleQuestionings < ActiveRecord::Migration
  def change
    create_table :article_questionings do |t|
      t.text :article
      t.text :questions
      t.text :answer_choices
      t.text :correct_answers
      t.integer :num_of_questions
      t.integer :num_of_answer_choices

      t.timestamps null: false
    end
  end
end
