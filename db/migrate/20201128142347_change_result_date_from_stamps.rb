class ChangeResultDateFromStamps < ActiveRecord::Migration[6.0]
  def change
    rename_column :stamps, :result_date, :deadline_date
  end
end
