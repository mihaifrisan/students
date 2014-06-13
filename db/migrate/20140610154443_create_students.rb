class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :email
      t.string :first_name, :last_name
      t.text :address

      t.timestamps
    end
  end
end
