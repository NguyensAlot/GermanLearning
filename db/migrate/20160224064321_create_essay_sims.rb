class CreateEssaySims < ActiveRecord::Migration
  def change
    create_table :essay_sims do |t|
      t.string :graderEmail
      t.text :essay
      t.string :article1
      t.string :article2
      t.string :article3
      t.string :userEmail

      t.timestamps null: false
    end
  end
end
