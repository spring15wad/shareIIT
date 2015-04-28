class Request < ActiveRecord::Base
  belongs_to :user
  has_many :replyposts, dependent :destroy
end
