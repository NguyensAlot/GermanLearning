class CreateEssaySims < ActiveRecord::Migration
  def change
    create_table :essay_sims do |t|
      t.string :grader_email
      t.text :essay
      t.string :article1
      t.string :article2
      t.string :article3
      t.string :user_email
    end
  end
end
