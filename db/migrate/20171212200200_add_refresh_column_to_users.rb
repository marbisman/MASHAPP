class AddRefreshColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :refresh_token, :string, null:true
  end
end
