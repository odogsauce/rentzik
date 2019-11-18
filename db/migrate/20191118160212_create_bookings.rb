class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :begin_at
      t.date :end_at
      t.float :final_price
      t.integer :status
      t.references :user, foreign_key: true
      t.references :instrument, foreign_key: true

      t.timestamps
    end
  end
end
