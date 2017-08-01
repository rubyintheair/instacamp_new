class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :username
      t.text :caption
      t.string :likes_count
      t.string :integer
      t.string :url

      t.timestamps
    end
  end
end
