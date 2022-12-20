class RemovePriceFromFlats < ActiveRecord::Migration[7.0]
  def change
    remove_column :flats, :price, :integer
  end
end
