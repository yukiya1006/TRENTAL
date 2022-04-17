class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    
    create_table :notifications do |t|
      t.boolean :checked, default: false, null: false
      t.integer :chat_id
      t.integer :visitor_id, null: false
      t.integer :visited_id, null: false
      t.integer :user_id
      t.integer :trainer_id

      t.timestamps
    end
  end
end
