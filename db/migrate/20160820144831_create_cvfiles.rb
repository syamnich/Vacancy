class CreateCvfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :cvfiles do |t|
      t.string :file
      t.references :vacancy, foreign_key: true

      t.timestamps
    end
  end
end
