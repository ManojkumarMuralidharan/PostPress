class CreatePostvotes < ActiveRecord::Migration
  def change
    create_table :postvotes do |t|
      t.references :Post
      t.references :User
      t.timestamps
    end
  end
end
