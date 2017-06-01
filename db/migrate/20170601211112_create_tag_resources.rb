class CreateTagResources < ActiveRecord::Migration[5.1]
  def change
    create_table :tag_resources do |t|
      t.references :resource, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
