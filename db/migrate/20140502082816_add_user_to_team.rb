class AddUserToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :user_id, :integer
    add_index :teams, [:user_id, :created_at]
  end
end
