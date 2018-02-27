class CreateGsds < ActiveRecord::Migration[5.1]
  def change
    create_table :gsds do |t|
      t.string :item
      t.text :description
      t.integer :priority

      t.timestamps
    end
  end
end
