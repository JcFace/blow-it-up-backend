class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :username
      t.string :email
      t.string :password_digest
      t.boolean :is_client
      t.string :bio
      t.string :img_url
      t.float :lat
      t.float :lng
      t.string :address

      t.timestamps
    end
  end
end
