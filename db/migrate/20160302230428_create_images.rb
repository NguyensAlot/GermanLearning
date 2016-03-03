class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :title
      t.text :description
      t.text :source
      t.text :category
    end
  end
end
