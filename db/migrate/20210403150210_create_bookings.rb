class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.float :current_price
      t.text :description
      t.text :feedback

      t.timestamps
      t.belongs_to :positions, foreign_key: true
      t.belongs_to :user, foreign_key: true
    end
  end
end
