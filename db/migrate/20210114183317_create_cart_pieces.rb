class CreateCartPieces < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_pieces do |t|
      t.references :user, null: false, foreign_key: true
      t.references :art_piece, null: false, foreign_key: true

      t.timestamps
    end
  end
end
