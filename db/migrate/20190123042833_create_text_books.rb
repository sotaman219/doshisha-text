class CreateTextBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :text_books do |t|
      t.string :name
      t.string :author
      t.string :publisher
      t.integer :price
      t.string :class
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
