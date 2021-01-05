class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.boolean :is_client
      t.string :bio
      t.string :img_url

      t.timestamps
    end
  end
end
