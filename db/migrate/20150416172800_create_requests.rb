class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :title
      t.text :description
      t.integer :user_id, index: true

      t.timestamps null: false
    end
  end
end
