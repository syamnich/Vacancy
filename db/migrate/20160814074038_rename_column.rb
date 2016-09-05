class RenameColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :companies, :decription, :description
  end
end
