class RemoveLongAndLatFromFlats < ActiveRecord::Migration[7.0]
  def change
    remove_column :flats, :long, :integer
    remove_column :flats, :lat, :integer
  end
end
