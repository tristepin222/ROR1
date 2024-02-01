class CreateHistorics < ActiveRecord::Migration[7.1]
  def change
    create_table :historics do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :status
      t.string :current_class
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
