class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, index: true
      t.string :photo
      t.string :description
      t.float :price
      t.string :category, index: true
      t.references :admin, index: true
      t.references :venue, index: true
      t.timestamps
    end
  end
end
