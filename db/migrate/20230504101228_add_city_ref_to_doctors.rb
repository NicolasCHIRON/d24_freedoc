class AddCityRefToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_reference :doctors, :city, null: false, foreign_key: true
  end
end
