class CreateStamps < ActiveRecord::Migration[6.0]
  def change
    create_table :stamps do |t|
      t.references :user, null: false, foreign_key: true
      t.references :test, null: false, foreign_key: true
      t.date :start_date
      t.date :result_date
      t.date :expiration_date
      t.string :test_answer
      t.text :reviewer_feedback
      t.integer :status

      t.timestamps
    end
  end
end
