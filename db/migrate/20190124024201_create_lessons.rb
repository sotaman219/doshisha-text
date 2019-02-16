class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :name
      t.references :universities, foreign_key: true
      t.references :faculties, foreign_key: true

      t.timestamps
    end
  end
end
