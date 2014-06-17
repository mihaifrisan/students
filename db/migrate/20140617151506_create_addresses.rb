class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :student
      t.string :country, :city, :street

      t.timestamps
    end
  end
end
