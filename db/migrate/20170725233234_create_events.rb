class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.string :event_url
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.belongs_to :user, null: false
      t.timestamps null: false
    end
  end
end
