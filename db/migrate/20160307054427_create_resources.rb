class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.text :title
      t.text :resource_link
      t.text :description
      t.string :resource_type

      t.timestamps null: false
    end
  end
end
