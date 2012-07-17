class CreateNewMicroposts < ActiveRecord::Migration
  def change
    create_table :new_microposts do |t|
      t.integer :user_id
      t.string :content

      t.timestamps
    end
  end
end
