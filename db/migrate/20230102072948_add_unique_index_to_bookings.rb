class AddUniqueIndexToBookings < ActiveRecord::Migration[7.0]
  def change
    add_index :bookings, [:flat_id, :user_id, :date], unique: true
  end
end
