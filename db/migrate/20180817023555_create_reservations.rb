class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :guest_id, null: false
      t.integer :home_id, null: false
      t.integer :num_guests, null: false
      t.date :check_in_date, null: false
      t.date :check_out_date, null: false
      t.timestamps
    end
    add_index :reservations, :guest_id
    add_index :reservations, :home_id
  end
end
