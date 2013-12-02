class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :about, index: true
      t.references :author, index: true
      t.text :text

      t.timestamps
    end
  end
end
