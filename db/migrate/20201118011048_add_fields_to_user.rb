class AddFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :cpf, :string
    add_column :users, :role, :integer
  end
end
