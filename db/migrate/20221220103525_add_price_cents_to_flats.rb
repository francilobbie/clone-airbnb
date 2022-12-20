class AddPriceCentsToFlats < ActiveRecord::Migration[7.0]
  def change
    add_monetize :flats, :price, amount: { null: true, default: nil }, currency: { null: true, default: nil } # Rails 4x and above
  end
end
