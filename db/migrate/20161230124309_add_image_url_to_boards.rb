class AddImageUrlToBoards < ActiveRecord::Migration[5.0]
  def change
    add_column :boards, :image_url, :string
  end
end
