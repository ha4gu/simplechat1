class Post < ApplicationRecord
  validates :message, {presence: true, length: {maximum: 800}}
  validates :author,  {presence: true}
end
