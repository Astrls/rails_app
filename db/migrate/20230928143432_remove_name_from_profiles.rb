class RemoveNameFromProfiles < ActiveRecord::Migration[7.0]
  def change
    remove_column :profiles, :name, :string
  end
end
