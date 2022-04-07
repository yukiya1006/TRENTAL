class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      t.integer :room_id
       t.integer :user_id
       t.integer :trainer_id
       t.text :message
       t.boolean :is_trainer

      t.timestamps
    end
  end
end
