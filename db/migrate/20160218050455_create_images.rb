class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :title
      t.text :description
      t.text :source
      t.text :copyright

      t.timestamps null: false
    end
  end
end
