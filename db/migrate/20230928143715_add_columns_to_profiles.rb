class AddColumnsToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :image, :string
    add_column :profiles, :bio, :text
  end
end