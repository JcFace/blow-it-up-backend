class CreateArtPieces < ActiveRecord::Migration[6.0]
  def change
    create_table :art_pieces do |t|
      t.string :name
      t.string :image
      t.string :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
