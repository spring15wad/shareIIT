class Replypost < ActiveRecord::Base
  belongs_to :request
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 200 }
  validates :request_id, presence: true
end
