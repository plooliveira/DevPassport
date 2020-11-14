class FixSeveralThings < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :seniority, :string
    remove_column :code_reviews, :reviewer_grade, :float
    add_column :code_reviews, :status, :string
  end
end
