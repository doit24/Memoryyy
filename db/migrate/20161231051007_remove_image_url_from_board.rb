class RemoveImageUrlFromBoard < ActiveRecord::Migration[5.0]
  def change
    remove_column :boards, :image_url, :string
  end
end
