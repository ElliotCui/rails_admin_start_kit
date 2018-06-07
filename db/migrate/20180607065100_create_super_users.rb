class CreateSuperUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :super_users do |t|
      t.string :email, limit: 191
      t.string :name, limit: 32
      t.string :password_salt
      t.string :password_hash
      t.boolean :is_active

      t.timestamps
    end
  end
end
