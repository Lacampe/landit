class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.references :user, foreign_key: true, index:true
      t.string :company
      t.string :location
      t.string :sector
      t.string :position
      t.integer :interest
      t.string :salary_range
      t.string :genre
      t.timestamps
    end
  end
end
