class CreateLocalities < ActiveRecord::Migration[7.1]
  def change
    create_table :localities do |t|
      t.integer :postal_code
      t.string :name

      t.timestamps
    end
  end
end
