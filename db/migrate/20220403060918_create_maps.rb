class CreateMaps < ActiveRecord::Migration[6.1]
  def change
    create_table :maps do |t|

      t.float :latitude
      t.float :longitude
      t.integer :post_id
      t.string :address
      t.string :body
      t.integer :trainer_id
      
      t.timestamps
    end
  end
end
