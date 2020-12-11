class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.references :user,null: false, foreign_key: true
      t.references :post,null:true, foreign_key: true
      t.references :comment,null:true, foreign_key: true

      t.timestamps
    end
  end
end
