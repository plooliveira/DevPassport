class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.references :user, null: false, foreign_key: true
      t.references :visa, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :seniority
      t.integer :price

      t.timestamps
    end
  end
end
