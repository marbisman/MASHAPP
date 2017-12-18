class AddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :access_token, :string, null:true
  end
end
