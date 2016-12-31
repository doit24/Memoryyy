class AddBoardIdToBoard < ActiveRecord::Migration[5.0]
  def change
    add_column :boards, :board_id, :integer
  end
end
