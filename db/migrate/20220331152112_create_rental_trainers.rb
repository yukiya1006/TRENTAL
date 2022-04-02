class CreateRentalTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :rental_trainers do |t|
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :trainer_name,               null: false, default: ""
      t.string :age
      t.string :gender
      t.string :activity_area
      t.string :rental_price
      t.text :biography

      t.timestamps
    end
  end
end
