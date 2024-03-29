class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :name
      t.string :note
      t.string :photo
      t.string :status
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
