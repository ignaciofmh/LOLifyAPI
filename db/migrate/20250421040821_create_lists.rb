class CreateLists < ActiveRecord::Migration[7.1]
  def change
    create_table :lists do |t|
      t.string :list_type
      t.references :user, null: false, foreign_key: true
      t.references :joke, null: false, foreign_key: true

      t.timestamps
    end
  end
end
