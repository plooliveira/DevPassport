class CreateStamps < ActiveRecord::Migration[6.0]
  def change
    create_table :stamps do |t|
      t.references :user, null: false, foreign_key: true
      t.references :test, null: false, foreign_key: true
      t.date :issuing_date
      t.date :expiration_date

      t.float :reviewer_grade
      t.string :test_answer
      t.text :reviewer_feedback
      t.date :start_date
      t.date :end_date

      t.string :seniority
      t.integer :status

      t.timestamps
    end
  end
end
