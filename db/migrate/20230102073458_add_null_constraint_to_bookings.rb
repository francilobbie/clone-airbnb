class AddNullConstraintToBookings < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :date, :date, null: false
  end
end
