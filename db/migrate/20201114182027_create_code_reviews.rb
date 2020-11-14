class CreateCodeReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :code_reviews do |t|
      t.references :stamp, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :reviewer_grade
      t.string :test_answer
      t.text :reviewer_feedback
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
