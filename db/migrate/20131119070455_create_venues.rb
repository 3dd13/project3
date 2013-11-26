class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name, index: true
      t.string :district, index: true
      t.string :address
      t.string :map_code
      
      t.timestamps
    end
  end
end
