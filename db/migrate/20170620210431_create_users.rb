class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true
      t.string :nickname
      t.integer :points
      t.string :image_url
      t.string :password_digest
      t.index :email
      t.timestamps
    end
  end
end
