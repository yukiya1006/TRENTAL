class CreateBadRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :bad_relationships do |t|
        t.integer :bader_id
        t.integer :baded_id
        
      t.timestamps
    end
  end
end
