class AddLinkToTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :link, :string
  end
end
