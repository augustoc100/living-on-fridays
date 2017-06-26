class CreateComents < ActiveRecord::Migration[5.0]
  def change
    create_table :coments do |t|
      t.references :user, foreign_key: true
      t.references :space, foreign_key: true
      t.string :coment
      t.integer :points
      t.integer :recommends

      t.timestamps
    end
  end
end
