class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :url
      t.integer :rating
      t.string :description
      t.boolean :free
      t.references :category, foreign_key: true
      t.references :resource_type, foreign_key: true

      t.timestamps
    end
  end
end
