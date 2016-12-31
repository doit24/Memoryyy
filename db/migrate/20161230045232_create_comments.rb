class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :nickname
      t.integer :rate
      t.text :comment
      t.integer :board_id
      t.timestamps
    end
  end
end
