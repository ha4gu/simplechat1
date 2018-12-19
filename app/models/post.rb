class Post < ApplicationRecord
  validates :message, {presence: true, length: {maximum: 800}}
  validates :author,  {presence: true}

  def jsttime
    self.created_at.in_time_zone('Asia/Tokyo').strftime("%Y-%m-%d %H:%M")
  end

end
