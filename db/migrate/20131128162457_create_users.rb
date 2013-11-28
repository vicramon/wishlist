class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :wishlist
      t.string :password_digest
      t.string :remember_token
      t.string :reset_password_token
      t.string :session_token
    end
  end
end
