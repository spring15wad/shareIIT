class CreateReplyposts < ActiveRecord::Migration
  def change
    create_table :replyposts do |t|
      t.text :content
      t.integer :replyuid
      t.integer :request_id, index: true

      t.timestamps null: false
    end
  end
end
