class CreateRanks < ActiveRecord::Migration[7.1]
  def change
    create_table :ranks do |t|
      t.integer :rank
      t.references :user, null: false, foreign_key: true
      t.references :joke, null: false, foreign_key: true

      t.timestamps
    end
  end
end
