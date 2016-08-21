class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.date :calendar_date
      t.string :staff_id
      t.integer :agreement_id
      t.datetime :start_time
      t.datetime :end_time
      t.decimal :work_time
      t.decimal :over_time
      t.decimal :late_night_over_time
      t.text :note

      t.timestamps null: false
    end
  end
end
