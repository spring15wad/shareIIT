#20150421043628_add_requesttype_to_requests.rb
#class AddTypeToRequests < ActiveRecord::Migration  <-- Class name doesn't match filename
class AddRequesttypeToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :requesttype, :string
  end
end
