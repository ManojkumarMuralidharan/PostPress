class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :content
      t.references :User
      t.references :Category
      t.timestamps
    end
  end
end
