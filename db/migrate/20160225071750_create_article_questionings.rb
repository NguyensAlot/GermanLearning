class CreateArticleQuestionings < ActiveRecord::Migration
  def change
    create_table :article_questionings do |t|
      t.text :article
      t.string :answer_choices
      t.string :correct_answer

      t.timestamps null: false
    end
  end
end
