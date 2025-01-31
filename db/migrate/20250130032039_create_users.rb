class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :user_name , null: false
      t.references :event, null: false, foreign_key: true
      t.boolean :sunday_1
      t.boolean :sunday_2
      t.boolean :sunday_lunch
      t.boolean :sunday_3
      t.boolean :sunday_4
      t.boolean :sunday_5
      t.boolean :sunday_6
      t.boolean :sunday_night
      t.boolean :monday_1
      t.boolean :monday_2
      t.boolean :monday_lunch
      t.boolean :monday_3
      t.boolean :monday_4
      t.boolean :monday_5
      t.boolean :monday_6
      t.boolean :monday_night
      t.boolean :tuesday_1
      t.boolean :tuesday_2
      t.boolean :tuesday_lunch
      t.boolean :tuesday_3
      t.boolean :tuesday_4
      t.boolean :tuesday_5
      t.boolean :tuesday_6
      t.boolean :tuesday_night
      t.boolean :wednesday_1
      t.boolean :wednesday_2
      t.boolean :wednesday_lunch
      t.boolean :wednesday_3
      t.boolean :wednesday_4
      t.boolean :wednesday_5
      t.boolean :wednesday_6
      t.boolean :wednesday_night
      t.boolean :thursday_1
      t.boolean :thursday_2
      t.boolean :thursday_lunch
      t.boolean :thursday_3
      t.boolean :thursday_4
      t.boolean :thursday_5
      t.boolean :thursday_6
      t.boolean :thursday_night
      t.boolean :friday_1
      t.boolean :friday_2
      t.boolean :friday_lunch
      t.boolean :friday_3
      t.boolean :friday_4
      t.boolean :friday_5
      t.boolean :friday_6
      t.boolean :friday_night
      t.boolean :saturday_1
      t.boolean :saturday_2
      t.boolean :saturday_lunch
      t.boolean :saturday_3
      t.boolean :saturday_4
      t.boolean :saturday_5
      t.boolean :saturday_6
      t.boolean :saturday_night

      t.timestamps
    end
  end
end
