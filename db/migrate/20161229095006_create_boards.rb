class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
        t.string      :title
        t.text        :owner
        t.text        :image_url
        t.text        :content
      t.timestamps
    end
  end
end
