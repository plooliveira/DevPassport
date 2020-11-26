class ChangeColumnNullFromCodeReviews < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:code_reviews, :user_id, true)
  end
end
