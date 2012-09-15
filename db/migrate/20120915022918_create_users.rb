class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :pwd
      t.string :phone
      t.references :Role
      t.timestamps
    end
  end
end
