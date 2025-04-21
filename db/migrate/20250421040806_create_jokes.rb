class CreateJokes < ActiveRecord::Migration[7.1]
  def change
    create_table :jokes do |t|
      t.text :content
      t.float :rank_avg
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
