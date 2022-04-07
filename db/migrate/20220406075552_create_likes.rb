class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      
      t.integer :user_id
      t.integer :trainer_id
      t.integer :map_id

      t.timestamps
    end
  end
end
