class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.references :manager, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
