class RemoveUsersIdFromProfiles < ActiveRecord::Migration[7.0]
  def change
    remove_column :profiles, :users_id, :integer
  end
end
