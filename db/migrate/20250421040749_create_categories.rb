class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.boolean :need_legal_age

      t.timestamps
    end
  end
end
