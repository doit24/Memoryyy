class RemoveBoardidFromBoard < ActiveRecord::Migration[5.0]
  def change
    remove_column :boards, :board_id, :string
  end
end
