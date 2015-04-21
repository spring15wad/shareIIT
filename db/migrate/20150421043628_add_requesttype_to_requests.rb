class AddTypeToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :requesttype, :string
  end
end
