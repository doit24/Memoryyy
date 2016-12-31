class ChangeImageUrlToImage < ActiveRecord::Migration[5.0]
  def change
    remove_column :boards, :image_url, :text
    add_column :boards, :image, :string
  end
end
