class ChagneOwnerToNickname < ActiveRecord::Migration[5.0]
  def change
    remove_column :boards, :owner, :text
    add_column :boards, :nickname, :text
  end
end
