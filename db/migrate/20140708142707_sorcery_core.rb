class SorceryCore < ActiveRecord::Migration
  def change
    add_column :students, :crypted_password, :string, null: false
    add_column :students, :salt, :string, null: false
      
    add_index :students, :email, unique: true
  end
end
