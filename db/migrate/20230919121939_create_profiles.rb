class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :picture
      t.string :phone
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end