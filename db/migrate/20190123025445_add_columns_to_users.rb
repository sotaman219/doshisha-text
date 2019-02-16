class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    # for omniauth 
    add_column :users, :uid, :string
    add_column :users, :provider, :string
  end
end
