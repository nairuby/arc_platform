class CreateConferences < ActiveRecord::Migration[7.0]
  def change
    create_table :conferences do |t|
      t.string :title, null: false
      t.datetime :start_date
      t.datetime :end_date
      t.string :location
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
