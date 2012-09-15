class CreateCommentvotes < ActiveRecord::Migration
  def change
    create_table :commentvotes do |t|
      t.references :User
      t.references :Comment
      t.timestamps
    end
  end
end
