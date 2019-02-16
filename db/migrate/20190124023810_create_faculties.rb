class CreateFaculties < ActiveRecord::Migration[5.2]
  def change
    create_table :faculties do |t|
      t.string :name
      t.references :universities, foreign_key: true

      t.timestamps
    end
  end
end
